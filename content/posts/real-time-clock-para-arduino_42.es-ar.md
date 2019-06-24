---
title: 'Real Time Clock para Arduino'
date: 2014-07-01T17:33:00.004+12:00
draft: false
tags : [tutorial, rtc, arduino]
series : ['arduino']
---

[![](http://3.bp.blogspot.com/-gt6t2BiO_-A/U7JEx1aXyxI/AAAAAAAAZqY/XFcyPiz30uY/s1600/10478656_10204082693930392_3698296316643171283_n.jpg)](http://3.bp.blogspot.com/-gt6t2BiO_-A/U7JEx1aXyxI/AAAAAAAAZqY/XFcyPiz30uY/s1600/10478656_10204082693930392_3698296316643171283_n.jpg) Pequeño tutorial para hacer funcionar un reloj tiempo real que utilizo para mi arduino.  
El modelo es Tiny RTC I2C Modules y es el de la foto.  
Como pueden ver, la batería es recargable.  
La conexión es la siguiente:  
  
  
  
|     **RTC**       |   **Arduino** |  
|     GND       |      GND   |  
|     VCC       |        +5V   |  
|     SDA       |        A4     |  
|     SCL       |         A5     |  
|     BAT       |      +3.3v   |  

  

  

[![](http://4.bp.blogspot.com/-PaoiVHkIndk/U7JFCNyl1EI/AAAAAAAAZqs/UHWFwozrTUY/s1600/Untitled+Sketch_bb.png)](http://4.bp.blogspot.com/-PaoiVHkIndk/U7JFCNyl1EI/AAAAAAAAZqs/UHWFwozrTUY/s1600/Untitled+Sketch_bb.png)

  

Código:
-------

### Poner la hora

1.  /\* Downloaded from http://projectsfromtech.blogspot.com/
    
2.  *Connect SCL, SDA, Vcc, and GND
    
3.  *Set date in function below.
    
4.  *Upload and enjoy!
    
5.  */
    

8.  //Arduino 1.0+ Only
    

10.  #include "Wire.h"
    

12.  #define DS1307_ADDRESS 0x68
    
13.  byte zero = 0x00; //workaround for issue #527
    

15.  void setup(){
    
16.    Wire.begin();
    

20.    Serial.begin(9600);
    
21.    setDateTime(); //MUST CONFIGURE IN FUNCTION
    
22.  }
    

24.  void loop(){
    
25.    printDate();
    
26.    delay(1000);
    
27.  }
    

29.  void setDateTime(){
    

31.    byte second =     00; //0-59
    
32.    byte minute =      37; //0-59
    
33.    byte hour =        23; //0-23
    
34.    byte weekDay =    1; //1-7
    
35.    byte monthDay =    30; //1-31
    
36.    byte month =       7; //1-12
    
37.    byte year  =       14; //0-99
    

39.    Wire.beginTransmission(DS1307_ADDRESS);
    
40.    Wire.write(zero); //stop Oscillator
    

42.    Wire.write(decToBcd(second));
    
43.    Wire.write(decToBcd(minute));
    
44.    Wire.write(decToBcd(hour));
    
45.    Wire.write(decToBcd(weekDay));
    
46.    Wire.write(decToBcd(monthDay));
    
47.    Wire.write(decToBcd(month));
    
48.    Wire.write(decToBcd(year));
    

50.    Wire.write(zero); //start
    

52.    Wire.endTransmission();
    

54.  }
    

56.  byte decToBcd(byte val){
    
57.  // Convert normal decimal numbers to binary coded decimal
    
58.    return ( (val/10*16) + (val%10) );
    
59.  }
    

61.  byte bcdToDec(byte val)  {
    
62.  // Convert binary coded decimal to normal decimal numbers
    
63.    return ( (val/16*10) + (val%16) );
    
64.  }
    

66.  void printDate(){
    

68.    // Reset the register pointer
    
69.    Wire.beginTransmission(DS1307_ADDRESS);
    
70.    Wire.write(zero);
    
71.    Wire.endTransmission();
    

73.    Wire.requestFrom(DS1307_ADDRESS, 7);
    

75.    int second = bcdToDec(Wire.read());
    
76.    int minute = bcdToDec(Wire.read());
    
77.    int hour = bcdToDec(Wire.read() & 0b111111); //24 hour time
    
78.    int weekDay = bcdToDec(Wire.read()); //0-6 -> sunday - Saturday
    
79.    int monthDay = bcdToDec(Wire.read());
    
80.    int month = bcdToDec(Wire.read());
    
81.    int year = bcdToDec(Wire.read());
    

83.    //print the date EG   3/1/11 23:59:59
    
84.    Serial.print(month);
    
85.    Serial.print("/");
    
86.    Serial.print(monthDay);
    
87.    Serial.print("/");
    
88.    Serial.print(year);
    
89.    Serial.print(" ");
    
90.    Serial.print(hour);
    
91.    Serial.print(":");
    
92.    Serial.print(minute);
    
93.    Serial.print(":");
    
94.    Serial.println(second);
    

96.  }
    

### Obtener la hora

1.  /\* Downloaded from http://projectsfromtech.blogspot.com/
    
2.  *Connect SCL, SDA, Vcc, and GND
    
3.  *Open Serial Monitor and enjoy!
    
4.  */
    

6.  //Arduino 1.0+ Only
    

8.  #include "Wire.h"
    
9.  #define DS1307_ADDRESS 0x68
    

11.  void setup(){
    
12.    Wire.begin();
    
13.    Serial.begin(9600);
    
14.  }
    

16.  void loop(){
    
17.    printDate();
    
18.    delay(1000);
    
19.  }
    

21.  byte bcdToDec(byte val)  {
    
22.  // Convert binary coded decimal to normal decimal numbers
    
23.    return ( (val/16*10) + (val%16) );
    
24.  }
    

26.  void printDate(){
    

28.    // Reset the register pointer
    
29.    Wire.beginTransmission(DS1307_ADDRESS);
    

31.    byte zero = 0x00;
    
32.    Wire.write(zero);
    
33.    Wire.endTransmission();
    

35.    Wire.requestFrom(DS1307_ADDRESS, 7);
    

37.    int second = bcdToDec(Wire.read());
    
38.    int minute = bcdToDec(Wire.read());
    
39.    int hour = bcdToDec(Wire.read() & 0b111111); //24 hour time
    
40.    int weekDay = bcdToDec(Wire.read()); //0-6 -> sunday - Saturday
    
41.    int monthDay = bcdToDec(Wire.read());
    
42.    int month = bcdToDec(Wire.read());
    
43.    int year = bcdToDec(Wire.read());
    

45.    //print the date EG   3/1/11 23:59:59
    
46.    Serial.print(month);
    
47.    Serial.print("/");
    
48.    Serial.print(monthDay);
    
49.    Serial.print("/");
    
50.    Serial.print(year);
    
51.    Serial.print(" ");
    
52.    Serial.print(hour);
    
53.    Serial.print(":");
    
54.    Serial.print(minute);
    
55.    Serial.print(":");
    
56.    Serial.println(second);
    

58.  }
    

**Bug:**
--------

> Muestra una fecha invalida como **7/31/14 2:27:36**