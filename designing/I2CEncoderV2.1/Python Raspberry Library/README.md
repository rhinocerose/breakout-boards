# I2C Encoder V2.1 Python library 
--------------------------------------------------------------------------------

## Introduction

Here you can find the library and some examples for Raspberry Pi.
For more details of the functionality of the board please read the [Datasheet](../EncoderI2CV2.1_v1.0.pdf) 

## Installation

The installation is very simple:

* Download the file [**i2cEncoderLibV2.py** ](Source/i2cEncoderLibV2.py) 
* Put the file in the folder where you have the source files.
* Import the library in your source files
``` python
import i2cEncoderLibV2
```


## Initialization

The library makes available the class **i2cEncoderLibV2**
For initialize the library you have to declare an instance of the class **i2cEncoderLibV2** for each encoders.
In the instance you have to declare the I2C address of the board
For example:

``` python
import smbus2
import i2cEncoderLibV2

bus = smbus2.SMBus(1)
encoder = i2cEncoderLibV2.i2cEncoderLibV2(bus, 0x61)
```
In this example the I2C address is 0x61: jumpers A0, A5 and A6 are soldered

## Callback Configuration

This library support the callback functionality.
There is the possibility to link a function to a specific interrupt of the I2C Encoder V2, in this way the function is automatically called when the I2C Encoder V2 generates an interrupts.

A callback function must be declared as the following:

```python
def NAME_OF_THE_FUNCTION():
```
There are 16 possible events:

| Event   | Description   |
|:-----------:|:----------------------------------|
| onButtonRelease | Encoder push button is released |
| onButtonPush | Encoder push button is pushed |
| onButtonDoublePush | Encoder push button is double pushed |
| onIncrement | The counter value is incremented |
| onDecrement | The counter value is decremented |
| onChange | The counter value is incremented or decremented |
| onMax | The counter value reach the maximum threshold |
| onMin | The counter value reach the minimum threshold |
| onMinMax | The counter value reach the maximum or minimum threshold |
| onGP1Rise | GP1 configured as input, rising edge |
| onGP1Fall | GP1 configured as input, falling edge |
| onGP2Rise | GP2 configured as input, rising edge  |
| onGP2Fall | GP2 configured as input, falling edge  |
| onGP3Rise | GP3 configured as input, rising edge  |
| onGP3Fall | GP3 configured as input, falling edge  |
| onFadeProcess | Fade process terminated |

#### Examples:

```python
encoder = i2cEncoderLibV2.i2cEncoderLibV2(bus, 0x61)

...

 # Simple callback that ist's called when the encoder is rotated and blink the green led #
def EncoderChange():
    encoder.writeLEDG(100)
    print ('Changed: %d' % (encoder.readCounter32()))
    encoder.writeLEDG(0)

...

encoder.onChange = EncoderChange # Attach the event to the callback function#

}

```

If you need to remove the link with a callback, you just need to define:
```python
encoder.onChange = None
```

## Methods

### Initialization
#### begin(conf)
This is used for initialize the encoder by writing the configuration register.
The parameters can be concatenate in OR mode.
Possible parameters are the following:

| Parameter | Description |
| ---------- | ------------------------------------------------------ |
| INT_DATA | The Threshold, counter step and counter value are used with integer numbers |
| FLOAT_DATA | The Threshold, counter step and counter value are used with floating numbers |
| | |
| WRAP_ENABLE | Wrap enable. When the counter value reaches the CMAX+1, restart to the CMIN and vice versa |
| WRAP_DISABLE | Wrap disable. When the counter value reaches the CMAX or CMIN, the counter stops to increasing or decreasing |
| | |
| DIRE_LEFT | Rotate left side to increase the value counter |
| DIRE_RIGHT | Rotate right side to increase the value counter |
| | |
| IPUP_DISABLE | Disable the internal pull-up on the INT pin |
| IPUP_ENABLE | Enable the internal pull-up on the INT pin |
| | |
| RMOD_X2 | Encoder in X2 mode |
| RMOD_X1 | Encoder in X1 mode |
| | |
| RGB_ENCODER | RGB illuminated encoder is soldered |
| STD_ENCODER | Standard rotary encoder is soldered |
| | |
| EEPROM_BANK1 | Select the first EEPROM bank |
| EEPROM_BANK2 | Select the second EEPROM bank |
| | |
| RESET | Reset the board |
| | |
| CLK_STRECH_ENABLE | Enable the I2C clock stretch (only v2.1) |
| CLK_STRECH_DISABLE | Disable the I2C clock stretch (only v2.1) |
| | |
| REL_MODE_ENABLE | Enable the CVAL relative mode (only v2.1)|
| REL_MODE_DISABLE | Disable the CVAL relative mode (only v2.1) |
| | |

###### Examples:

```python
encoder.begin(i2cEncoderLibV2.INT_DATA | i2cEncoderLibV2.WRAP_ENABLE | i2cEncoderLibV2.DIRE_RIGHT | i2cEncoderLibV2.IPUP_ENABLE | i2cEncoderLibV2.RMOD_X1 | i2cEncoderLibV2.RGB_ENCODER)
```

###  reset()
Reset of the board. 
In this command there is 8ms delay in order to make the board correctly restart.


### Configuration

#### GPx pins configuration

This 3 function are used for configure the GP pins. The parameter are the same for all of the 3 GP pins.
The interrupt configuration are used only when the pin is configured as digital input.

##### writeGP1conf(gp1)
##### writeGP2conf(gp2)
##### writeGP3conf(gp3)

| Parameter   | Description   |
|:-----------:|:-------------:|
|GP_PWM| Set the GP pin as PWM output|
|GP_OUT| Set the GP pin as digital output|
|GP_AN| Set the GP pin as analog input|
|GP_IN| Set the GP pin as digital input output|
|||
|GP_PULL_EN| Enable the internal pull-up of the pin|
|GP_PULL_DI| Disable the internal pull-up of the pin|
|||
|GP_INT_DI| Disable the pin interrupt|
|GP_INT_PE| Enable the interrupt at the positive edge|
|GP_INT_NE|  Enable the interrupt at the negative edge|
|GP_INT_BE|  Enable the interrupt at the positive and negative edge|

###### Examples:

```python
encoder.writeGP1conf(i2cEncoderLibV2.GP_AN | i2cEncoderLibV2.GP_PULL_DI | i2cEncoderLibV2.GP_INT_DI)  # Configure the GP1 as analog input with the pull-up and the interrupt disable #
```



##### writeInterruptConfig(interrupt)

This method is used for enable or disable the interrupt source selectively. When an interrupt event occurs, the INT pin goes low and the event is stored in the status register.

| Parameter   | Description   |
|:-----------:|:-------------:|
| PUSHR | Push button of the encoder is released |
| PUSHP | Push button of the encoder is pressed |
| PUSHD | Push button of the encoder is doule pushed  |
| RINC  | Encoder is rotated in the increment direction  |
| RDEC  | Encoder is rotated in the decrement direction  |
| RMAX  | Maximum threshold is reached  |
| RMIN  | Minimum threshold is reached  |
| INT_2  | An event on the interrupt 2 register occurs |


###  void autoconfigInterrupt(void)

This method auto configures the **INTCONF** register according to the attached callback.
**For the proper use, must be called after the definition of the last event property.**

```python
encoder.onChange = EncoderChange
encoder.onButtonPush = EncoderPush
encoder.onButtonDoublePush = EncoderDoublePush
encoder.onMax = EncoderMax
encoder.onMin = EncoderMin
  # Enable the I2C Encoder V2 interrupts according to the previous attached callback #
encoder.autoconfigInterrupt()

```


##### writeAntibouncingPeriod(bounce)

This method is used for writing the Anti-bouncing period **ANTBOUNC**.
This set the period where an opposite rotation  is ignored
The I2C encoder V2 will multiplies this value by 10 (value x10).
###### Examples:

```python
encoder.writeAntibouncingPeriod(20)  # Set an anti-bouncing of 200ms # 
```


##### writeDoublePushPeriod(dperiod)

This method is used for setting the window period  **DPPERIOD** of the double push of the rotary encoder switch. It the value is 0 the double push option is disabled.
The I2C encoder V2 will multiply this value x10.
###### Examples:

```python
encoder.writeDoublePushPeriod(50)  # Set a period for the double push of 500ms #
```


##### writeFadeRGB(fade)

This method is used for setting the fade speed **FADERGB** of the RGB LED of the rotary encoder. It the value is 0 the fade option is disabled.
###### Examples:

```python
encoder.writeFadeRGB(1)  #Fade enabled with 1ms step 
```


##### writeFadeGP(fade)

This method is used for setting the fade speed **FADEGP** of the GP pins. It the value is 0 the fade option is disabled.
###### Examples:

```python
  encoder.writeFadeGP(5)  # GP Fade enabled with 5ms step #
```


### writeGammaRLED(gamma)
### writeGammaGLED(gamma)
### writeGammaBLED(gamma)
### writeGammaGP1(gamma)
### writeGammaGP2(gamma)
### writeGammaGP3(gamma)

This method is used to set a gamma correction for the RGB led of the encoder and for the GP pins.

| Parameter   | Description   |
|:-----------:|:-------------|
| GAMMA_OFF   | Gamma correction is OFF |
| GAMMA_1   | Gamma is 1, in this case the PWM is linear |
| GAMMA_1_8   | Gamma is 1.8 |
| GAMMA_2   | Gamma is 2 |
| GAMMA_2_2   | Gamma is 2.2 |
| GAMMA_2_4   | Gamma is 2.4 |
| GAMMA_2_6 | Gamma is 2.6 |
| GAMMA_2_8   | Gamma is 2.8 |

#### Examples:

```python
  encoder.writeGammaRLED(i2cEncoderLibV2.GAMMA_2)
  encoder.writeGammaGLED(i2cEncoderLibV2.GAMMA_2)
  encoder.writeGammaBLED(i2cEncoderLibV2.GAMMA_2)
```


### Status

##### updateStatus()
Read from the encoder status register (reg:0x05) and save the value internally.
Return value is **true** in case of some event, otherwise is **false**
In case an event of the I2STATUS  register, the I2STATUS is automatically readed.

###### Examples:

```python
  if Encoder.updateStatus() == True :
  # Something happens
  
```



##### readStatus(status)

Must be called after **updateStatus()**, this method is used for check if some event occurred one the **ESTATUS** register.
Return value is **true** in case of the event occurred, otherwise is **false**
Possible parameter are:

| Parameter   | Description   |
|:-----------:|:-------------:|
| PUSHR | Push button of the encoder is released |
| PUSHP | Push button of the encoder is pressed |
| PUSHD | Push button of the encoder is double pushed  |
| RINC  | Encoder is rotated in the increment direction  |
| RDEC  | Encoder is rotated in the decrement direction  |
| RMAX  | Maximum threshold is reached  |
| RMIN  | Minimum threshold is reached  |
| INT_2  | An event on the interrupt 2 register occurs |

###### Example:
```python
 if  encoder.updateStatus() == True :
      if  encoder.readStatus(RINC) == True :
      	print ('Increment: %d' % (encoder.readCounter32())) 
      
      if  encoder.readStatus(RDEC) == True :
      	print ('Decrement: %d' % (encoder.readCounter32())) 

      if  encoder.readStatus(RMAX) == True :
      	print ('Max!') 

      if  encoder.readStatus(RMIN) == True :
      	print ('Min!')  

      if  encoder.readStatus(PUSHP) == True :
      	print ('Encoder pushed!')  
        
	  if  encoder.readStatus(PUSHR) == True :
      	print ('Encoder released!')   

      if  encoder.readStatus(PUSHD) == True :
      	print ('Encoder double pushed!')
```


##### readStatus()

Return the status of the register **ESTATUS**



##### readInt2(status)
Must be called after **updateStatus()**, this method is used for check if some event occurred one the secondary interrupt status **I2STATUS** register.
Return value is **true** in case of the event occurred, otherwise is **false**
Possible parameter are:

| Parameter   | Description   |
|:-----------:|:-------------:|
| GP1_POS  | Positive edge on the GP1 pin |
| GP1_NEG  | Negative edge on the GP1 pin |
| GP2_POS  | Positive edge on the GP2 pin |
| GP2_NEG  |Negative edge on the GP2 pin |
| GP3_POS  | Positive edge on the GP3 pin|
| GP3_NEG  |Negative edge on the GP3 pin |
| FADE_INT |Fade process finished   |

###### Example:
```python
 if  Encoder.updateStatus() == True :
      if  Encoder.readInt2(GP1_POS)
        print("GP1 positive edge")
      
      if Encoder.readInt2(GP1_NEG) == True :
        print ('GP1 negative edge ')
    

      if Encoder.readInt2(GP2_POS)  == True :
          print('GP2 positive edge')
      
    
      if  Encoder.readInt2(GP2_NEG) == True :
        print('GP2 negative edge ')
      

      if  Encoder.readInt2(GP3_POS) == True :
        print('GP3 positive edge')
      

      if  Encoder.readInt2(GP3_NEG) == True :
        print('GP3 negative edge ')
      

      if  Encoder.readInt2(FADE_INT) == True :
        println('Fade process finished') 
      
```

##### readInt2Raw()

Return the status of the register **I2STATUS**



##### readFadeStatus(status)

When this function is called, it performs a I2C reading.
This function return **true** when the fade running, otherwise return **false**

| Parameter   | Description   |
|:-----------:|:-------------:|
| FADE_R  | Fade process status of the RGB encoder Red color |
| FADE_G  | Fade process status of the RGB encoder Green color |
| FADE_B  | Fade process status of the RGB encoder Blue color |
| FADE_GP1  | Fade process status of the GP1 |
| FADE_GP2  | Fade process status of the GP2 |
| FADE_GP3  | Fade process status of the GP3 |



##### readFadeStatusRaw()

Return the value of the register **FSTATUS**.



### Reading methods
In this section are listed all the reading method available


##### readCounter32()
Return the counter value in the format **32bit int**, by reading all the 4 bytes of the counter value registers.



##### readCounter16()
Return the counter value in the format **16bit int**, by reading the 2 LSB  of the counter value registers.
Useful when the counter register is between the values -32768 to 32767.



##### readCounter8()
Return the counter value in the format **8bit int**, by reading the LSB byte of the counter value register.
Useful when the counter register is between the values -128 to 127



##### readCounterFloat()
Return the counter value in the format **float**, by reading all the 4 bytes of the counter value registers.
For using this function you have to configure the board with the parameter **FLOAT_DATA**.



##### readMax()
Return the maximum threshold in format **32bit int**, bye reading all the 4 bytes of the counter Max.



##### readMaxFloat()
Return the maximum threshold in format **float**, bye reading all the 4 bytes of the counter Max.



##### readMin()
Return the minimum threshold in format **32bit int**, by reading all the 4 byte of the counter Min.



##### readMinFloat()
Return the minimum  threshold in format **float**, bye reading all the 4 bytes of the counter Min.



##### readStep()
Return the minimum threshold in format **32bit int**, by reading all the 4 bytes of the ISTEP registers.



##### readStepFloat()
Return the step value in format **float**, by reading all the 4 bytes of the ISTEP registers .



##### readLEDR()
Return the value of the RLED register. 



##### readLEDG()
Return the value of the GLED register. 



##### readLEDB()
Return the value of the BLED register. 



##### readGP1()
Return the value of the GP1REG register. 
If the **GP1** is configured as input, it's possible to read the logic status of the pin: *1* when the pin is high, otherwise *0*.
If the **GP1** is configured as analog, it's possible to read the 8bit of the ADC.



##### readGP2()
Return the value of the GP2REG register. 
If the **GP2** is configured as input, it's possible to read the logic status of the pin: *1* when the pin is high, otherwise *0*.
If the **GP2** is configured as analog, it's possible to read the 8bit of the ADC.



##### readGP3()
Return the value of the GP3REG register. 
If the **GP3** is configured as input, it's possible to read the logic status of the pin: *1* when the pin is high, otherwise *0*.
If the **GP3** is configured as analog, it's possible to read the 8bit of the ADC. 



##### readAntibouncingPeriod()
Return the value of the ANTBOUNC register. 



##### readDoublePushPeriod()
Return the value of the DPPERIOD register. 



##### readFadeRGB()
Return the value of the FADERGB register. 



##### readFadeGP()
Return the value of the FADEGP register. 


##### readIDCode()
Return the ID code of the I2C Encoder V2.1, that is 0x53
Available only on the V2.1

##### readVersion()
Return the version of the board. 
Available only on the V2.1

##### readEEPROM(add)
Return the value of the EEPROM register. 
This function automatically manage the setting of the first and second memory bank.




### Writing methods
#####  writeCounter(value)
Write the counter value register with a  **32bit int** number. All of the 4 bytes are wrote.



#####  writeCounterFloat(value)
Write the counter value register with a  **float** number. All of the 4 bytes are wrote.



#####  writeMax(max)
Write the Max register with a  **32bit int** number. All of the 4 bytes are wrote.



#####  writeMax(max)
Write the Max register with a  **float** number. All of the 4 bytes are wrote.



#####  writeMin(min)
Write the Min register with a **32bit int** number. All of the 4 bytes are wrote.



#####  writeMinFloat(min)
Write the Min register with a **float** number. All of the 4 bytes are wrote.



#####  writeStep(step)
Write the increment step  with a  **32bit int** number. All of the 4 bytes are wrote.



#####  writeStepFloat(step)
Write the increment step with a  **float** number. All of the 4 bytes are wrote.



##### writeLEDR(rled)
Write the PWM value of the RLED of the RGB encoder. When 0 means PWM at 0%, LED off while 0xFF means PWM at 100% and LED ON.



##### writeLEDG(gled)
Write the PWM value of the GLED of the RGB encoder. When 0 means PWM at 0%, LED off while 0xFF means PWM at 100% and LED ON.



##### writeLEDB(bled)
Write the PWM value of the BLED of the RGB encoder. When 0 means PWM at 0%, LED off while 0xFF means PWM at 100% and LED ON.



##### writeRGBCode(rgb)
Write a 24bit RGB color in the format 0xRRGGBB.



##### writeGP1(gp1)
Write the GP1REG register.
If the GP1 is configure as PWM with this method it's possible to write the PWM value.
If the GP1 is configure as output with this method it's possible to write the logic status: 1 for high, while 0 for low.



##### writeGP2(gp2)
Write the GP2REG register.
If the GP2 is configure as PWM with this method it's possible to write the PWM value.
If the GP2 is configure as output with this method it's possible to write the logic status: 1 for high, while 0 for low.



##### writeGP3(gp3)
Write the GP2REG register.
If the GP2 is configure as PWM with this method it's possible to write the PWM value.
If the GP2 is configure as output with this method it's possible to write the logic status: 1 for high, while 0 for low.



##### writeAntibouncingPeriod(bounc)
Write the ANTBOUNC register.



##### writeDoublePushPeriod(dperiod)
Write the DPPERIOD register.



##### writeFadeRGB(fade)
Write the FADERGB register.


##### writeFadeGP(fade)
Write the FADEGP register.


##### writeGammaRLED(gamma)
Configure the gamma correction for the red led of the RGB encoder

##### writeGammaGLED(gamma)
Configure the gamma correction for the green led of the RGB encoder

##### writeGammaBLED(gamma)
Configure the gamma correction for the blue led of the RGB encoder

##### writeGammaGP1(gamma)
Configure the gamma correction for the GP1 pin

##### writeGammaGP2(gamma)
Configure the gamma correction for the GP2 pin

##### writeGammaGP3(gamma)
Configure the gamma correction for the GP3 pin


##### writeEEPROM(add, data)
Write the EEPROM memory.
The input parameter *add* is the address. This method automatically change the first or the second bank.
The input parameter *data* is the data that will be written.

