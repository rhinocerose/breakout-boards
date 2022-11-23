#!/usr/bin/env python3

import collections
import glob
from pprint import pprint
import re
import shutil
import sys
import tempfile
import termcolor

print_attn = lambda x: termcolor.cprint(x, attrs=['bold'])
print_err = lambda x: termcolor.cprint(x, 'red', attrs=['bold'])

print("")
print("*** MAKE SURE YOU HAVE CLOSED THE EAGLE FILE BEFORE RUNNING THIS ***")
print("")

print("I also recommend doing this with clean git, because, I wrote this in")
print("an afternoon and make no promises. But it worked for me!")
print("")

schs = glob.glob('*.sch')

if len(schs) == 0:
   print("Could not find any Eagle schematic files.")
   sys.exit(1)
elif len(schs) > 1:
   print("Multiple sch's found.")
   print("Please type the full file name of the sch you want.")
   for f in schs:
      print(" - " + f)
   sch = input("sch file: ")
else:
   sch = schs[0]

print("> Using {} as schematic".format(sch))
with open(sch) as s:
   schematic = s.readlines()

brd = sch[:-4] + '.brd'

try:
   with open(brd) as b:
      board = b.readlines()
   print("> Using {} as board".format(brd))
except IOError:
   print("")
   print("WARN: No matching .brd file")
   r = input("      Continue without updating a board? [y/N] ").upper()
   if not( len(r) and r[0] == 'Y' ):
      sys.exit()
   board = None
   print("")


# Look for valid part prefixes to show the user
sch_part_tag_getname_re = re.compile('<part name="([a-zA-Z]+)[0-9]+".*[/]?>')
valid_prefixes = []
for line in schematic:
   result = sch_part_tag_getname_re.match(line)
   if result is not None:
      prefix = result.groups()[0]
      if prefix not in ['FRAME', 'GND']:
         valid_prefixes.append(prefix)
valid_prefixes = ', '.join(sorted(set(valid_prefixes)))

print('')
try:
   prefix = sys.argv[1]
   print("Will renumber prefix {}".format(prefix))
except IndexError:
   prefix = input("What part prefix to renumber ({})? ".format(valid_prefixes))


known_unit_prefixes = {
      'f': 1e-15,
      'p': 1e-12,
      'n': 1e-9,
      'u': 1e-6,
      'µ': 1e-6,
      'm': 1e-3,
      'c': 1e-2,
      'd': 1e-1,
      '': 1,
      'D': 1e1,
      'h': 1e2,
      'k': 1e3,
      'M': 1e6,
      'G': 1e9,
      }

def resolve_unit(value, unit_prefix):
   if unit_prefix == '':
      try:
         out = float(value)
      except:
         if value == 'DNP':
            out = float("inf")
         else:
            out = value
      return out
   else:
      return float(value) * known_unit_prefixes[unit_prefix]

_unit_package_list = []
def unit_package_insert(value, unit_prefixes, device):
   normalized = resolve_unit(value, unit_prefixes)
   if type(normalized) != float:
      if normalized != '':
         print('')
         print_err("Non-numeric value?")
         print(type(normalized))
         print(normalized)
         print(unit_prefixes)
         print(device)
         print('')
         raise NotImplementedError
   if (normalized, device) in _unit_package_list:
      return
   for existing in _unit_package_list:
      existing_normalized_value = existing[0]
      existing_device = existing[1]
      try:
         if normalized > existing_normalized_value:
            continue
         if normalized == existing_normalized_value:
            if device > existing_device:
               continue
         at = _unit_package_list.index(existing)
         break
      except:
         print('')
         print_err("Error: Internal error sorting:")
         print(value)
         print(unit_prefixes)
         print(device)
         print('')
         print('-->')
         print(normalized)
         print(existing)
         print('<--')
         print('If one of these is a number and the other is a string, you probably')
         print('have a mixture of parts with and without values, which is not supported.')
         print('')
         raise
   else:
      at = len(_unit_package_list)
   _unit_package_list.insert(at, (normalized, device))

def unit_package_sort(value, unit_prefixes, device):
   normalized = resolve_unit(value, unit_prefixes)
   return _unit_package_list.index((normalized, device))

sch_part_tag_re = re.compile(
      '<part name="{}(.+?)".*device[set]*="([0-9A-Z_-]+)".*value="([\.0-9]+)([{}]?)(.*?)".*[/]?>'.\
            format(prefix, ''.join(known_unit_prefixes.keys()))
            )
sch_part_tag_dnp_re = re.compile(
      '<part name="{}(.+?)".*value="(DNP|dnp)".*[/]?>'.format(prefix))
sch_part_tag_novalue_re = re.compile(
      '<part name="{}([0-9]+)".*deviceset="(.*?)".*[/]?>'.format(prefix))
sch_instance_tag_re = re.compile('<instance part="{}([\.0-9]+?)".*'.format(prefix))
sch_pinref_tag_re = re.compile('<pinref part="{}([\.0-9]+?)".*'.format(prefix))

brd_element_tag_re = re.compile(
      '<element name="{}(.+?)".*value="([\.0-9]+)([{}]?)(.*?)".*[/]?>'.\
            format(prefix, ''.join(known_unit_prefixes.keys()))
            )
brd_element_tag_othervalue_re = re.compile(
      '<element name="{}([0-9]+)".*value="(.*?)".*[/]?>'.format(prefix))
brd_contactref_tag_re = re.compile('<contactref element="{}([\.0-9]+?)".*'.format(prefix))

numbers = set()
values = collections.Counter()
unit_prefixes = collections.Counter()
suffixes = collections.Counter()
parts = dict()
ignore_high_parts = None
for line in schematic:
   result = sch_part_tag_re.match(line)
   if result is not None:
      # n.b. "device" is effectively the sch term for package
      number, device, value, unit_prefix, suffix = result.groups()
      if int(number) >= 1000:
         if ignore_high_parts is None:
            print("")
            print("This board has parts numbered >1000.")
            r = input("Would you like to ignore/skip parts >1000? [Y/n] ").upper()
            ignore_high_parts = not( len(r) and r[0] == 'N' )
         if ignore_high_parts:
            continue
      if number in numbers:
         raise NotImplementedError("Duplicate part numbers? Found {} twice :/".format(number))
      numbers.add(number)
      values[value] += 1
      unit_prefixes[unit_prefix] += 1
      suffixes[suffix] += 1

      unit_package_insert(value, unit_prefix, device)
      if (value,unit_prefix,device) not in parts:
         parts[(value,unit_prefix,device)] = []
      parts[(value,unit_prefix,device)].append({'number': number, 'suffix': suffix})

   else:
      # Check if the part is marked as DNP (do not populate)
      result = sch_part_tag_dnp_re.match(line)
      if result is not None:
         number, value = result.groups()
         if int(number) >= 1000:
            if ignore_high_parts is None:
               print("")
               print("This board has parts numbered >1000.")
               r = input("Would you like to ignore/skip parts >1000? [Y/n] ").upper()
               ignore_high_parts = not( len(r) and r[0] == 'N' )
            if ignore_high_parts:
               continue
         if number in numbers:
            raise NotImplementedError("Duplicate part numbers? Found {} twice :/".format(number))
         numbers.add(number)
         values['DNP'] += 1

         unit_package_insert('DNP','','')
         if ('DNP','','') not in parts:
            parts[('DNP','','')] = []
         parts[('DNP','','')].append({'number': number, 'suffix': ''})

      else:
         # This isn't a part with a value, check if it still matches. We want to
         # group parts, even if we don't have a perfect ordering mechanism.
         result = sch_part_tag_novalue_re.match(line)
         if result is not None:
            number, deviceset = result.groups()
            if int(number) >= 1000:
               if ignore_high_parts is None:
                  print("")
                  print("This board has parts numbered >1000.")
                  r = input("Would you like to ignore/skip parts >1000? [Y/n] ").upper()
                  ignore_high_parts = not( len(r) and r[0] == 'N' )
               if ignore_high_parts:
                  continue
            if number in numbers:
               raise NotImplementedError("Duplicate part numbers? Found {} twice :/".format(number))
            numbers.add(number)
            values[deviceset] += 1

            try:
               unit_package_insert('','',deviceset)
            except:
               print('---')
               print('Troublesome line: ' + line)
               raise
            if ('','',deviceset) not in parts:
               parts[('','',deviceset)] = []
            parts[('','',deviceset)].append({'number': number, 'suffix': ''})

try:
   parts = collections.OrderedDict(sorted(parts.items(), key=lambda t: unit_package_sort(*t[0])))
except TypeError:
   type_unit = {}
   for part in parts.items():
      unit = resolve_unit(part[0][0], part[0][1])
      if type(unit) not in type_unit:
         type_unit[type(unit)] = []
      type_unit[type(unit)].append(part)
   if len(type_unit) > 1:
      print_err("Error: Parts have mixture of values and no values")
      print("This is likely an error caused by a part with a missing value that should have one.")
      print("Below is a list of all parts, first sorted by whether they have a value")
      print("The 'number' field is the part number. One or more of these is likely wrong")
      pprint(type_unit)
      print("")
      sys.exit(1)
   else:
      raise
# print(parts)
# quit()

#print(values)
#print(unit_prefixes)
#print(suffixes)

fix_suffixes = False
if len(suffixes) > 1:
   new_suffix = suffixes.most_common()[0][0]
   print("")
   print("WARN: Not all parts have the same suffix")
   print("      (e.g. 15kΩ suffix is Ω, 10nF suffix is F)")
   print("")
   print("      The most common suffix is {}".format(new_suffix))
   print("")
   print("      The following parts have different suffixes:")
   print("          ", end='')
   temp1 = []
   temp2 = []
   for value_unit_device,partlist in parts.items():
      try:
         value,unit,device = value_unit_device
      except:
         print("value_unit_device: {}".format(value_unit_device))
         print(partlist)
         raise
      for part in partlist:
         if part['suffix'] != new_suffix:
            s1 = "{}{} : {}{}{}".format(prefix, part['number'], value, unit, part['suffix'])
            s2 = "{}{} : {}{}{}".format(prefix, part['number'], value, unit, new_suffix)
            temp1.append(s1)
            temp2.append(s2)
   print(", ".join(temp1))
   print("      And would look like this with suffix correction:")
   print("          ", end='')
   print(", ".join(temp2))
   print("")
   resp = input("Would you like to fix all of these suffixes to match? [Y/n] ").upper()
   if not( len(resp) and resp[0] == 'N' ):
      fix_suffixes = True


any_changes = False

counter = 1
for value_unit,partlist in parts.items():
   for part in partlist:
      part['new_number'] = str(counter)
      part['new_suffix'] = new_suffix if fix_suffixes else part['suffix']
      counter += 1
      if part['number'] != part['new_number']:
         any_changes = True
      if part['suffix'] != part['new_suffix']:
         any_changes = True

if not any_changes:
   print("")
   print("Parts are already numbered correctly. Quitting")
   sys.exit()

rename = dict()

print("")
if len(parts) == 0:
   print('No parts found that match the prefix "{}"'.format(prefix))
   sys.exit(1);
else:
   print("This script will relabel parts as follows:")
   print('')
   for value_unit_device,partlist in parts.items():
      value,unit,device = value_unit_device
      for part in partlist:
         old = "{}{} : {}{}{}   {}".format(prefix, part['number'], value, unit, part['suffix'], device)
         new = "{}{} : {}{}{}   {}".format(prefix, part['new_number'], value, unit, part['new_suffix'], device)
         if old == new:
            print("{:30} => {:30}".format(old, new))
         else:
            print_attn("{:30} => {:30}".format(old, new))

         rename[prefix + part['number']] = {
               'old_value': value + unit + part['suffix'],
               'new_value': value + unit + part['new_suffix'],
               'new_name': prefix + part['new_number'],
               }
      print('')

   r = input("Write new names to eagle files? [Y/n] ").upper()
   if len(r) and r[0] == 'N':
      sys.exit()

# Update schematic and board. Do everything in memory before touching files on disk
new_sch = tempfile.TemporaryFile()
for line in schematic:
   try:
      result = sch_part_tag_re.match(line)
      if result is not None:
         number, device, value, unit_prefix, suffix = result.groups()
         if int(number) >= 1000:
            if ignore_high_parts:
               continue
         old_name = prefix + number
         old_value = value + unit_prefix + suffix
         line = line.replace("name=\"" + old_name, "name=\"" + rename[old_name]['new_name'], 1)
         line = line.replace("value=\"" + old_value,"value=\"" + rename[old_name]['new_value'], 1)
         continue
      result = sch_instance_tag_re.match(line)
      if result is not None:
         number, = result.groups()
         if int(number) >= 1000:
            if ignore_high_parts:
               continue
         old_name = prefix + number
         line = line.replace(old_name, rename[old_name]['new_name'], 1)
         continue
      result = sch_pinref_tag_re.match(line)
      if result is not None:
         number, = result.groups()
         if int(number) >= 1000:
            if ignore_high_parts:
               continue
         old_name = prefix + number
         line = line.replace(old_name, rename[old_name]['new_name'], 1)
         continue
      result = sch_part_tag_novalue_re.match(line)
      if result is not None:
         number, deviceset = result.groups()
         if int(number) >= 1000 and ignore_high_parts:
            continue
         old_name = prefix + number
         line = line.replace(old_name, rename[old_name]['new_name'], 1)
         continue
   finally:
      new_sch.write(line.encode('utf-8'))

if board:
   new_brd = tempfile.TemporaryFile()
   for line in board:
      try:
         result = brd_element_tag_re.match(line)
         if result is not None:
            number, value, unit_prefix, suffix = result.groups()
            if int(number) >= 1000:
               if ignore_high_parts:
                  continue
            old_name = prefix + number
            old_value = value + unit_prefix + suffix
            line = line.replace("name=\"" + old_name, "name=\"" + rename[old_name]['new_name'], 1)
            line = line.replace("value=\"" + old_value, "value=\"" + rename[old_name]['new_value'], 1)
            continue
         result = brd_contactref_tag_re.match(line)
         if result is not None:
            number, = result.groups()
            if int(number) >= 1000:
               if ignore_high_parts:
                  continue
            old_name = prefix + number
            line = line.replace(old_name, rename[old_name]['new_name'], 1)
            continue
         result = brd_element_tag_othervalue_re.match(line)
         if result is not None:
            number, value = result.groups()
            if int(number) >= 1000:
               if ignore_high_parts:
                  continue
            old_name = prefix + number
            line = line.replace(old_name, rename[old_name]['new_name'], 1)
            continue
      finally:
         new_brd.write(line.encode('utf-8'))

new_sch.seek(0)
shutil.copyfileobj(new_sch, open(sch, 'wb'))
if board:
   new_brd.seek(0)
   shutil.copyfileobj(new_brd, open(brd, 'wb'))

