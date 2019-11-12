---
title: 'Arduino + LED inteligente'
date: 2014-02-19T03:07:00.006+13:00
draft: false
slug: 'Arduino + LED inteligente'
externalLink: ""
series: []
tags: [tutorial, rgb, diy, arduino, proyectos]
---

Hola a todos,

Hoy les dejo un video de un Arduino Uno controlando una tira de led RGB.

Entren y pueden encontrar los materiales para hacerlo :) 

Saludos 

# Requerimientos:

- Arduino Uno
- ULN2003AG
- Sound Detector Module
- Tira de Leds
- Transformador de 12V

# Diagrama:

[![](http://1.bp.blogspot.com/-KHho9m9S-JI/UwNpJSeOm-I/AAAAAAAAWuw/d1W7GPP1loU/s1600/rgb+controller.png)](http://1.bp.blogspot.com/-KHho9m9S-JI/UwNpJSeOm-I/AAAAAAAAWuw/d1W7GPP1loU/s1600/rgb+controller.png)

# Código:

/\*\*

 \* Cristian Marquez https://blog.cristianmarquez.me

 \* RGB controller with networking, potentiometer and android client
    
 \*\*/

//External Libraries

#include <SPI.h>
    
7.  #include <Ethernet.h>
    
9.  //Network
    
10.  byte mac\[\] \= {
    
11.    0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
    
12.  IPAddress ip(192,168,0,177);
    
13.  EthernetServer server(80);
    
14.  IPAddress gateway(192,168,0,1);
    
15.  IPAddress subnet(255, 255, 255, 0);
    

17.  //LED
    
18.  int redLedPin \= 3;
    
19.  int greenLedPin \= 5;
    
20.  int blueLedPin \= 6;
    

22.  //Sensors
    
23.  int soundDetectorAnalogPin\=A0;
    
24.  int soundDetectorDigitalPin\=8;
    
25.  int potentiometerAnalogPin\=A1;
    

28.  void setup()
    
29.  {
    
30.    Serial.begin(9600); //Just for debugging
    
31.    Ethernet.begin(mac, ip);
    
32.    server.begin();
    
33.    pinMode(soundDetectorDigitalPin, INPUT);
    
34.    pinMode(redLedPin, OUTPUT);    
    
35.    pinMode(greenLedPin, OUTPUT);    
    
36.    pinMode(blueLedPin, OUTPUT);    
    
37.  }
    

39.  void loop()
    
40.  {
    
41.    if (digitalRead(soundDetectorDigitalPin)\==1){
    
42.      int rand \= random(1,11);
    
43.      switch (rand)
    
44.      {
    
45.      case 1:
    
46.        //red
    
47.        turnLights(random(100, 255),0,0);
    
48.        delay(150);
    
49.        break;
    
50.      case 2:
    
51.        //green
    
52.        turnLights(0,random(100, 255),0);
    
53.        delay(150);
    
54.        break;
    
55.      case 3:
    
56.        //blue
    
57.        turnLights(0,0,random(100, 255));
    
58.        delay(150);
    
59.        break;
    
60.      case 4:
    
61.        //red+green
    
62.        turnLights(random(100, 255),random(100, 255),0);
    
63.        delay(150);
    
64.        break;
    
65.      case 5:
    
66.        //red+blue
    
67.        turnLights(random(100, 255),0,random(100, 255));
    
68.        delay(150);
    
69.        break;
    
70.      case 6:
    
71.        //green+blue
    
72.        turnLights(0,random(100, 255),random(100, 255));
    
73.        delay(150);
    
74.        break;
    
75.      case 7:
    
76.        //red+green+blue
    
77.        turnLights(random(100, 255),random(100, 255),random(100, 255));
    
78.        delay(150);
    
79.        break;
    
80.      case 8:
    
81.        //yellow
    
82.        turnLights(255,255,0);
    
83.        delay(150);
    
84.        break;
    
85.      case 9:
    
86.        //white
    
87.        turnLights(255,255,255);
    
88.        delay(150);
    
89.        break;
    
90.      case 10:
    
91.        //violet
    
92.        turnLights(238,130,238);
    
93.        delay(150);
    
94.        break;    
    
95.      }
    

97.    }
    
98.    else{
    
99.      turnLights(0,0,0);
    
100.    }
    
101.  }
    

106.  void useSerial()
    
107.  {
    
108.    while (Serial.available() \> 0) {
    

110.      // look for the next valid integer in the incoming serial stream:
    
111.      int red \= Serial.parseInt();
    
112.      // do it again:
    
113.      int green \= Serial.parseInt();
    
114.      // do it again:
    
115.      int blue \= Serial.parseInt();
    
116.      if (Serial.read() \== '\\n') {
    
117.        turnLights(red,green,blue);
    
118.      }
    
119.    }
    
120.  }
    

122.  void useEthernet()
    
123.  {
    
124.    EthernetClient client \= server.available();
    
125.    if (client) {
    
126.      // an http request ends with a blank line
    
127.      boolean currentLineIsBlank \= true;
    
128.      while (client.connected()) {
    
129.        if (client.available()) {
    
130.          char c \= client.read();
    
131.          // if you've gotten to the end of the line (received a newline
    
132.          // character) and the line is blank, the http request has ended,
    
133.          // so you can send a reply
    
134.          if (c \== '\\n' && currentLineIsBlank) {
    
135.            // send a standard http response header
    
136.            client.println("HTTP/1.1 150 OK");
    
137.            client.println("Content-Type: text/html");
    
138.            client.println();
    
139.            // print the current readings, in HTML format:
    
140.            client.print("Temperature: ");
    
141.            break;
    
142.          }
    
143.          if (c \== '\\n') {
    
144.            // you're starting a new line
    
145.            currentLineIsBlank \= true;
    
146.          }
    
147.          else if (c != '\\r') {
    
148.            // you've gotten a character on the current line
    
149.            currentLineIsBlank \= false;
    
150.          }
    
151.        }
    
152.      }
    
153.      // give the web browser time to receive the data
    
154.      delay(1);
    
155.      // close the connection:
    
156.      client.stop();
    
157.    }
    

159.  }
    

163.  void turnLights(int red, int green, int blue)
    
164.  {
    
165.    red \= constrain(red, 0, 255);
    
166.    green \=  constrain(green, 0, 255);
    
167.    blue \=  constrain(blue, 0, 255);
    
168.    analogWrite(redLedPin, red);
    
169.    analogWrite(greenLedPin, green);
    
170.    analogWrite(blueLedPin, blue);
    
171.  }
---
### Comments:
#### hola cristian disculpa quisiera saber como conecta...
[cesar uribe]( "noreply@blogger.com") - <time datetime="2015-03-07T14:53:13.295+13:00">Mar 5, 2015</time>

hola cristian disculpa quisiera saber como conectas exactamente el Sound Detector Module ya que en tu imagen no lo encuentro y en tu vídeo no logro visualizarlo  
gracias.
<hr />
#### Pesimo, esto no tiene sentido.
[Chavito](https://www.blogger.com/profile/12273711407478210285 "noreply@blogger.com") - <time datetime="2016-08-05T03:53:23.041+12:00">Aug 4, 2016</time>

Pesimo, esto no tiene sentido.
<hr />
