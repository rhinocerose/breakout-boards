#!/usr/bin/env python3
# -*- coding: utf-8 -*-

HELP = """
Convert an xls[x] bom to csv and text formats.

Accepts no arguments.
"""

import csv
from glob import glob
import itertools
import os
import sys

try:
	from sh import rm
except:
	print("You need to install the sh module.")
	print("https://github.com/amoffat/sh")
	sys.exit(1)

try:
	import openpyxl
except:
	print("You need the openpyxl module.")
	print("(sudo) pip3 install openpyxl")
	sys.exit(1)

try:
	import dataprint
except:
	print("You need to install the dataprint module.")
	print("(sudo) pip3 install dataprint")
	sys.exit(1)


# Display the help if any arguments are provided.
if len(sys.argv) > 1:
	print(HELP)
	sys.exit(0)

header = """\
# Bill of Materials
# Converted from {}
# Generated by bom_to_text.py
#
"""

boms = glob('*bom*xls*')

if len(boms) == 0:
	path = os.path.dirname(os.path.realpath(__file__))
	for l in open(os.path.join(path, '..', 'doc', 'BOM.md')):
		sys.stdout.write(l)
	print('')
	print('-' * 60)
	print('ERR: Could not find a bom to convert.')
	print('     You need to generate a bill of materials.')
	print('     The above directions may be helpful.')
	sys.exit(1)

for bom in boms:
	# Get the root name
	base = os.path.splitext(bom)[0]
	csvfile = '{}.csv'.format(base)
	txtfile = '{}.txt'.format(base)

	# Check if csv and txt versions already exist
	if os.path.exists(csvfile):
		# Open it and determine if we created it. If we did, then I'm sure it's
		# fine to overwrite it. Otherwise, we probably shouldn't just overwrite
		# other people's files.
		with open(csvfile, 'r') as f:
			for l in f:
				if 'Generated by bom_to_text.py' in l:
					break
			else:
				print("Found existing {} that this script didn't create.".format(csvfile))
				resp = input("Overwrite {}? [y/N] ".format(csvfile))
				if not (len(resp) and resp[0].lower() == 'y'):
					print("Quitting BOM conversion")
					sys.exit(1)

	if os.path.exists(txtfile):
		with open(txtfile, 'r') as f:
			for l in f:
				if 'Generated by bom_to_text.py' in l:
					break
			else:
				print("Found existing {} that this script didn't create.".format(txtfile))
				resp = input("Overwrite {}? [y/N] ".format(txtfile))
				if not (len(resp) and resp[0].lower() == 'y'):
					print("Quitting BOM conversion")
					sys.exit(1)

	# Convert xlsx -> csv
	# http://stackoverflow.com/questions/10802417/how-to-save-an-excel-worksheet-as-csv-from-python-unix
	workbook = openpyxl.load_workbook(bom)
	sheet = workbook.active
	# Github needs the first row to have as many ',''s as the widest row
	# Find the widest row
	cols = 0
	for row in sheet.rows:
		cols = max(cols, len(row))
	with open(csvfile, 'w') as outfile:
		csv_writer = csv.writer(outfile)
		for line in header.split('\n'):
			row = ['']*cols
			row[0] = line
			csv_writer.writerow(row)
		for row in sheet.rows:
			csv_writer.writerow([cell.value for cell in row])

	# Convert CSV to txt
	rows = []
	with open(csvfile,'r') as f:
		csvreader = csv.reader(f)
		for row in csvreader:
			rows.append(row)

	txt_contents = dataprint.to_string(data=rows, separator=' ')

	with open(txtfile, 'w') as f:
		f.write(header.replace('"', '').format(bom))
		f.write(txt_contents)
