ADXL345 Breakout Board
===============================

[![ADXL345 Breakout](https://dlnmh9ip6v2uc.cloudfront.net/images/products/9/8/3/6/09836-_01c_i_ma.jpg)
*ADXL345 Breakout Board (SEN-09836)*](https://www.sparkfun.com/products/9836)

The ADXL345 is a small, thin, low power, 3-axis MEMS accelerometer with high resolution 913-bit) measurement at up to +-16g.
Digital output data is formatted as 16-bit twos complement and is accessible through either an SPI or I2C digital interface.


Repository Contents
-------------------

* **/Hardware** - All Eagle design files (.brd, .sch, .STL)
* **/Libraries** - All Arduino libraries and board examples
* **/Production** - Test bed files and production panel files

## Hookup Guide

## Hardware Overview

### Features

- Supply Voltage: 2.0 - 3.6 VDC
- Ultra Low Power: As low as 23 uA in measurement mode, 0.1uA in standby mode at 2.5V
- SPI or I2C Communication
- Single Tap / Double Tap Detection
- Activity / Inactivity Sensing
- Free-Fall Detection

Whoa! What are those last three?! Yes, the ADXL345 has special  sensing abilities! The single and double tap sensing detects when a  single, or two simultaneous, acceleration events occur. Activity and  inactivity sensing detect the presence or lack of motion. Free-fall  sensing compares the acceleration on all axes with the threshold value  to know if the device is falling. All thresholds levels that trigger the activity, free-fall, and single tap/double tap events are *user-set* levels. These functions can also be mapped to one of two interrupt  output pins. An integrated, patent pending 32-level first in, first out  (FIFO) buffer can be used to store data to minimize host processor  intervention.

The ADXL345 is well suited to measure the static acceleration of  gravity in tilt-sensing applications, as well as dynamic acceleration  resulting from motion or shock. Its high resolution (4 mg/LSB) enables  measurement of inclination changes less than 1.0°. Furthermore, low  power modes enable intelligent motion-based power management with  threshold sensing and active acceleration measurement at extremely low  power dissipation.

### Applications

- Handsets
- Medical Instrumentation
- Gaming and Pointing Devices
- Industrial Instrumentation
- Personal Navigation Devices
- Hard Disk Drive (HDD) protection

### Pin Functionality

Below you can reference the ADXL345 breakout board and pin functions.



 [![alt text](https://cdn.sparkfun.com/assets/learn_tutorials/5/4/8/ADXL345_Breakout_Hardware.jpg)](https://cdn.sparkfun.com/assets/learn_tutorials/5/4/8/ADXL345_Breakout_Hardware.jpg)



### Breakout Board Pin Function Descriptions

| **Mnemonic**     | **Description**                                              |
| ---------------- | ------------------------------------------------------------ |
| GND              | This pin must be connected to ground                         |
| VCC              | Supply Voltage                                               |
| CS               | Chip Select                                                  |
| INT1             | Interrupt 1 Output                                           |
| INT2             | Interrupt 2 Output                                           |
| SDO              | Serial Data Output (SPI 4-Wire) / I2C Address Select         |
| SDA / SDI / SDIO | Serial Data I2C / Serial Data Input (SPI 4-WIRE) / Serial Data Input and Output (SPI 3-Wire) |
| SCL/SCLK         | Serial Communications Clock                                  |

## Assembly

With the ADXL345, I2C and SPI digital communications are available. In both cases, the ADXL345 operates as a slave device.

**Note:** A potential problem  when hooking up the ADXL345 breakout to an Arduino (or compatible board) is, if you are using a breadboard with loosely connected jumper wires,  you risk getting bad data. Make sure your connections are solid, and you should be fine.

### SPI Communication

First, we will look at how to connect an Arduino (or compatible board like SparkFun's [RedBoard](https://www.sparkfun.com/products/12757)) to the ADXL345 breakout board for SPI communication.

In SPI mode, the CS pin is controlled by the bus master. For SPI, either 3- or 4- wire configuration is possible.

Note: When using 3-wire SPI, it is  recommended that the SDO pin be pulled up to VDD I/O or pulled down to  GND via a 10 kΩ resistor. Please refer to page 15 of the [ADXL345 Datasheet](https://www.sparkfun.com/datasheets/Sensors/Accelerometer/ADXL345.pdf) for additional information.

The following is a table describing which pins on the Arduino should  be connected to the pins on the accelerometer for SPI 4-wire  communication.

| **Arduino Pin** | **ADXL345 Pin** |
| --------------- | --------------- |
| GND             | GND             |
| 3V3             | VCC             |
| 10              | CS              |
| 12              | SDO             |
| 11              | SDA             |
| 13              | SCL             |



Here is a wiring connection diagram to aid you in hooking it up for SPI 4-wire communication.



 [![alt text](https://cdn.sparkfun.com/r/600-600/assets/learn_tutorials/5/4/8/adxl345SPIFix.png)](https://cdn.sparkfun.com/assets/learn_tutorials/5/4/8/adxl345SPIFix.png)



**Heads up!** If using a 5V Arduino, such as the SparkFun RedBoard or the Arduino Uno, you will need to use a logic level converter to protect the ADXL345's 3/3V tolerant pins (as  shown in the diagram above). If using a 3.3V Arduino, such as the [Arduino Pro](https://www.sparkfun.com/products/10914) or [Pro Mini 3.3V/8MHz](https://www.sparkfun.com/products/11114), logic level conversion is not necessary.

### I2C Communication

Now, let's look at how to connect an Arduino (or compatible board like SparkFun's [RedBoard](https://www.sparkfun.com/products/12757)) to the ADXL345 breakout board for I2C communication.

I2C mode is enabled if the CS pin is tied to high. There is no  default mode if the CS pin is left unconnected, so it should always be  tied high or driven by an external controller.

Note: If other devices are connected to the same I2C bus, the nominal operating voltage level of those other devices cannot exceed VDD I/O by more than 0.3 V. External pull-up  resistors are necessary for proper I2C operation. Used in this  connection diagram are two 4.7 kΩ resistors. Please refer to page 18 of  the [ADXL345 Datasheet](https://www.sparkfun.com/datasheets/Sensors/Accelerometer/ADXL345.pdf) for additional information.

The following is a table describing which pins on the Arduino should  be connected to the pins on the accelerometer for I2C communication.

| **Arduino Pin** | **ADXL345 Pin** |
| --------------- | --------------- |
| GND             | GND             |
| 3V3             | VCC             |
| 3V3             | CS              |
| GND             | SDO             |
| A4              | SDA             |
| A5              | SCL             |



Here is a wiring connection diagram to aid you in hooking it up for I2C communication.



 [![alt text](https://cdn.sparkfun.com/r/600-600/assets/learn_tutorials/5/4/8/ADXL345Fix.png)](https://cdn.sparkfun.com/assets/learn_tutorials/5/4/8/ADXL345Fix.png)



Not using a SparkFun [RedBoard](https://www.sparkfun.com/products/12757) or Arduino Uno? The reference table below shows where Two Wire  Interface (TWI) pins are located on different and older Arduino boards.

| **Board**                   | **I2C / TWI Pins**             |
| --------------------------- | ------------------------------ |
| SparkFun Red, Uno, Ethernet | A4 (SDA), A5 (SCL)             |
| Mega2560                    | 20 (SDA), 21 (SCL)             |
| Leonardo                    | 2 (SDA), 3 (SCL)               |
| Due                         | 20 (SDA), 21 (SCL), SDA1, SCL1 |


License Information
-------------------
The hardware is released under [Creative Commons ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/).
The code is beerware; if you see me (or any other SparkFun employee) at the local, and you've found our code helpful, please buy us a round!

Distributed as-is; no warranty is given.
