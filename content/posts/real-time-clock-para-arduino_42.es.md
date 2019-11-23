---
title: 'Real Time Clock para Arduino'
date: 2014-07-01T17:33:00.004+12:00
draft: false
slug: 'Real Time Clock para Arduino'
externalLink: ""
series: []
tags: [tutorial, rtc, arduino]
---
[![](http://3.bp.blogspot.com/-gt6t2BiO_-A/U7JEx1aXyxI/AAAAAAAAZqY/XFcyPiz30uY/s1600/10478656_10204082693930392_3698296316643171283_n.jpg)](http://3.bp.blogspot.com/-gt6t2BiO_-A/U7JEx1aXyxI/AAAAAAAAZqY/XFcyPiz30uY/s1600/10478656_10204082693930392_3698296316643171283_n.jpg) Pequeño tutorial para hacer funcionar un reloj tiempo real que utilizo para mi arduino.  
El modelo es Tiny RTC I2C Modules y es el de la foto.  
Como pueden ver, la batería es recargable.  
La conexión es la siguiente:  
```  
|     **RTC**       |   **Arduino** |  
|     GND       |      GND   |  
|     VCC       |        +5V   |  
|     SDA       |        A4     |  
|     SCL       |         A5     |  
|     BAT       |      +3.3v   |  
```

<p align="center">
  <img src="http://4.bp.blogspot.com/-PaoiVHkIndk/U7JFCNyl1EI/AAAAAAAAZqs/UHWFwozrTUY/s1600/Untitled+Sketch_bb.png" width="60%"/>
</p>

# Código:

## Poner la hora

{{< highlight arduino "linenos=table">}}
\* Downloaded from http://projectsfromtech.blogspot.com/
\*Connect SCL, SDA, Vcc, and GND
\*Set date in function below.
\*Upload and enjoy!
\*

//Arduino 1.0+ Only

 #include "Wire.h"
 #define DS1307\_ADDRESS 0x68
 byte zero \= 0x00; //workaround for issue #527

 void setup(){
   Wire.begin();
   Serial.begin(9600);
   setDateTime(); //MUST CONFIGURE IN FUNCTION
 }

 void loop(){
   printDate();
   delay(1000);
 }

 void setDateTime(){

   byte second \=     00; //0-59

   byte minute \=      37; //0-59

   byte hour \=        23; //0-23

   byte weekDay \=    1; //1-7

   byte monthDay \=    30; //1-31

   byte month \=       7; //1-12

   byte year  \=       14; //0-99

   Wire.beginTransmission(DS1307\_ADDRESS);

   Wire.write(zero); //stop Oscillator

   Wire.write(decToBcd(second));

   Wire.write(decToBcd(minute));

   Wire.write(decToBcd(hour));

   Wire.write(decToBcd(weekDay));

   Wire.write(decToBcd(monthDay));

   Wire.write(decToBcd(month));

   Wire.write(decToBcd(year));

   Wire.write(zero); //start

   Wire.endTransmission();

 }

 byte decToBcd(byte val){

 // Convert normal decimal numbers to binary coded decimal

   return ( (val/10\*16) + (val%10) );

 }

 byte bcdToDec(byte val)  {

 // Convert binary coded decimal to normal decimal numbers

   return ( (val/16\*10) + (val%16) );

 }

 void printDate(){

   // Reset the register pointer

   Wire.beginTransmission(DS1307\_ADDRESS);

   Wire.write(zero);

   Wire.endTransmission();

   Wire.requestFrom(DS1307\_ADDRESS, 7);

   int second \= bcdToDec(Wire.read());

   int minute \= bcdToDec(Wire.read());

   int hour \= bcdToDec(Wire.read() & 0b111111); //24 hour time

   int weekDay \= bcdToDec(Wire.read()); //0-6 -> sunday - Saturday

   int monthDay \= bcdToDec(Wire.read());

   int month \= bcdToDec(Wire.read());

   int year \= bcdToDec(Wire.read());

   //print the date EG   3/1/11 23:59:59

   Serial.print(month);

   Serial.print("/");

   Serial.print(monthDay);

   Serial.print("/");
   Serial.print(year);
   Serial.print(" ");
   Serial.print(hour);
   Serial.print(":");
   Serial.print(minute);
   Serial.print(":");
   Serial.println(second);
 }
{{< /highlight >}}


### Obtener la hora

{{< highlight java "linenos=table">}}
 /\* Downloaded from http://projectsfromtech.blogspot.com
 \*Connect SCL, SDA, Vcc, and GND
 \*Open Serial Monitor and enjoy!
 \*/
 
 //Arduino 1.0+ Only
 #include "Wire.h"
 #define DS1307\_ADDRESS 0x68

  void setup(){
 
    Wire.begin();
 
    Serial.begin(9600);
 
  }
 
  void loop(){
    printDate();
    delay(1000);
  }
 
  byte bcdToDec(byte val)  {
  // Convert binary coded decimal to normal decimal numbers
    return ( (val/16\*10) + (val%16) );
  }
 
  void printDate(){
    // Reset the register pointer
    Wire.beginTransmission(DS1307\_ADDRESS);
    byte zero \= 0x00;
    Wire.write(zero);
 
    Wire.endTransmission();
 
    Wire.requestFrom(DS1307\_ADDRESS, 7);
 
    int second \= bcdToDec(Wire.read());
 
    int minute \= bcdToDec(Wire.read());
 
    int hour \= bcdToDec(Wire.read() & 0b111111); //24 hour time
 
    int weekDay \= bcdToDec(Wire.read()); //0-6 -> sunday - Saturday
 
    int monthDay \= bcdToDec(Wire.read());
 
    int month \= bcdToDec(Wire.read());
 
    int year \= bcdToDec(Wire.read());
 
    //print the date EG   3/1/11 23:59:59
 
    Serial.print(month);
 
    Serial.print("/");
 
    Serial.print(monthDay);
 
    Serial.print("/");
 
    Serial.print(year);
 
    Serial.print(" ");
 
    Serial.print(hour);
 
    Serial.print(":");
    Serial.print(minute);
    Serial.print(":");
    Serial.println(second);
 
  }
  {{< /highlight >}}
 
## Bug

```
A veces muestra Muestra una fecha invalida como 7/31/14 2:27:36
```