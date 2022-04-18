## Adafruit BH1750 Light Sensor - STEMMA QT / Qwiic PCB

<a href="http://www.adafruit.com/products/4681"><img src="assets/4681.jpg?raw=true" width="500px"><br/>
Click here to purchase one from the Adafruit shop</a>

PCB files for the Adafruit BH1750 Light Sensor - STEMMA QT / Qwiic.

Format is EagleCAD schematic and board layout
* https://www.adafruit.com/product/4681

### Description

This is the BH1750 16-bit Ambient Light Sensor from Rohm. Because of how important it is to humans and most other living things, sensing the amount of light in an environment is a common place to get started when learning to work with microcontrollers and sensors. Should we turn up the brightness of our display or dim it to save power? Which direction should your robot move to stay in an area with the most light? Is it day or night? All of these questions can be answered with the help of the BH1750. It's a small, capable and inexpensive light sensor that you can include into your next project to add the detection and measurement of light.

### Pinouts

[ ![adafruit_products_pinputs4681_top_ORIG_2020_07.png](https://cdn-learn.adafruit.com/assets/assets/000/093/309/medium800/adafruit_products_pinputs4681_top_ORIG_2020_07.png?1595024462)  ](https://learn.adafruit.com/assets/93309)

#### **Power Pins**

- **VIN** - this is the  power pin. Since the sensor chip uses 3 VDC, we have included a voltage  regulator on board that will take 3-5VDC and safely convert it down. To  power the board, give it the same power as the logic level of your  microcontroller - e.g. for a 5V microcontroller like Arduino, use 5V
- **3Vo** - this is the 3.3V output from the voltage regulator, you can grab up to 100mA from this if you like
- **GND** - common ground for power and logic

#### **I2C Logic Pins**

- **SCL** - I2C clock pin,  connect to your microcontroller I2C clock line. This pin is level  shifted so you can use 3-5V logic, and there's a **10K pullup** on this pin.
- **SDA** - I2C data pin,  connect to your microcontroller I2C data line. This pin is level shifted so you can use 3-5V logic, and there's a **10K pullup** on this pin.
- [**STEMMA QT**](https://learn.adafruit.com/introducing-adafruit-stemma-qt) **-** These connectors allow you to connectors to dev boards with **STEMMA QT** connectors or to other things with [various associated accessories](https://www.adafruit.com/?q=JST SH 4)
- **ADDR/AD0 Jumper** - **I2C Address pin**. Pulling this pin high or bridging the solder jumper on the back will change the I2C address from **0x23** to **0x5C**

[ ![adafruit_products_pinputs4681_quarter_ORIG_2020_07.png](https://cdn-learn.adafruit.com/assets/assets/000/093/310/medium800/adafruit_products_pinputs4681_quarter_ORIG_2020_07.png?1595024481)  ](https://learn.adafruit.com/assets/93310)



### License

Adafruit invests time and resources providing this open source design, please support Adafruit and open-source hardware by purchasing products from [Adafruit](https://www.adafruit.com)!

Designed by Limor Fried/Ladyada for Adafruit Industries.

Creative Commons Attribution/Share-Alike, all text above must be included in any redistribution.
See license.txt for additional details.
