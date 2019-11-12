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

{{< highlight arduino "linenos=table">}}
\**

 \* Cristian Marquez https://www.cristianmarquez.me

 \* RGB controller with networking, potentiometer and android client
    
 \*\*/

//External Libraries

#include <SPI.h>
    
#include <Ethernet.h>

//Network

 byte mac\[\] \= {

   0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };

 IPAddress ip(192,168,0,177);

 EthernetServer server(80);

 IPAddress gateway(192,168,0,1);

 IPAddress subnet(255, 255, 255, 0);

 //LED

 int redLedPin \= 3;

 int greenLedPin \= 5;

 int blueLedPin \= 6;

 //Sensors

 int soundDetectorAnalogPin\=A0;

 int soundDetectorDigitalPin\=8;

 int potentiometerAnalogPin\=A1;

 void setup()

 {

   Serial.begin(9600); //Just for debugging

   Ethernet.begin(mac, ip);

   server.begin();

   pinMode(soundDetectorDigitalPin, INPUT);

   pinMode(redLedPin, OUTPUT);    

   pinMode(greenLedPin, OUTPUT);    

   pinMode(blueLedPin, OUTPUT);    

 }

 void loop()

 {

   if (digitalRead(soundDetectorDigitalPin)\==1){

     int rand \= random(1,11);

     switch (rand)

     {

     case 1:

       //red

       turnLights(random(100, 255),0,0);

       delay(150);

       break;

     case 2:

       //green

       turnLights(0,random(100, 255),0);

       delay(150);

       break;

     case 3:

       //blue

       turnLights(0,0,random(100, 255));

       delay(150);

       break;

     case 4:

       //red+green

       turnLights(random(100, 255),random(100, 255),0);

       delay(150);

       break;

     case 5:

       //red+blue

       turnLights(random(100, 255),0,random(100, 255));

       delay(150);

       break;

     case 6:

       //green+blue

       turnLights(0,random(100, 255),random(100, 255));

       delay(150);

       break;

     case 7:

       //red+green+blue

       turnLights(random(100, 255),random(100, 255),random(100, 255));

       delay(150);

       break;

     case 8:

       //yellow

       turnLights(255,255,0);

       delay(150);

       break;

     case 9:

       //white

       turnLights(255,255,255);

       delay(150);

       break;

     case 10:

       //violet

       turnLights(238,130,238);

       delay(150);

       break;    

     }

   }

   else{

     turnLights(0,0,0);

    }

  }

  void useSerial()

  {

    while (Serial.available() \> 0) {

      // look for the next valid integer in the incoming serial stream:

      int red \= Serial.parseInt();

      // do it again:

      int green \= Serial.parseInt();

      // do it again:

      int blue \= Serial.parseInt();

      if (Serial.read() \== '\\n') {

        turnLights(red,green,blue);

      }

    }

  }

  void useEthernet()

  {

    EthernetClient client \= server.available();

    if (client) {

      // an http request ends with a blank line

      boolean currentLineIsBlank \= true;

      while (client.connected()) {

        if (client.available()) {

          char c \= client.read();

          // if you've gotten to the end of the line (received a newline

          // character) and the line is blank, the http request has ended,

          // so you can send a reply

          if (c \== '\\n' && currentLineIsBlank) {

            // send a standard http response header

            client.println("HTTP/1.1 150 OK");

            client.println("Content-Type: text/html");

            client.println();

            // print the current readings, in HTML format:

            client.print("Temperature: ");

            break;

          }

          if (c \== '\\n') {

            // you're starting a new line

            currentLineIsBlank \= true;

          }

          else if (c != '\\r') {

            // you've gotten a character on the current line

            currentLineIsBlank \= false;

          }

        }

      }

      // give the web browser time to receive the data

      delay(1);

      // close the connection:

      client.stop();

    }

  }

  void turnLights(int red, int green, int blue)

  {

    red \= constrain(red, 0, 255);

    green \=  constrain(green, 0, 255);

    blue \=  constrain(blue, 0, 255);

    analogWrite(redLedPin, red);

    analogWrite(greenLedPin, green);

    analogWrite(blueLedPin, blue);

  }
{{< /highlight >}}


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
