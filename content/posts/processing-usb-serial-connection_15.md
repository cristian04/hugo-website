---
title: 'Processing: USB Serial connection workaround'
date: 2011-12-07T11:17:00.003+13:00
draft: false
slug: 'Processing: USB Serial connection workaround'
externalLink: ""
series: []
tags: [tutorial, arduino, processing]
---
[![](http://3.bp.blogspot.com/-KzmkuMoWaGw/Tt6YI4h4vlI/AAAAAAAAJvc/QMjTOK07Z3M/s200/370561_1316082428_830972740_n.jpg)](http://3.bp.blogspot.com/-KzmkuMoWaGw/Tt6YI4h4vlI/AAAAAAAAJvc/QMjTOK07Z3M/s1600/370561_1316082428_830972740_n.jpg)

I'm playing with an Arduino UNO Microcontroler but, using [Processing](http://processing.org/) over linux I found a bug.  

When I tried to open an USB Serial port, Processing did not recognize it.  
  
# DMESG:  

{{< highlight bash "linenos=table">}}
cristian04@finally:/dev$ dmesg | grep tty  
[0.000000] console \[tty0\] enabled  
[1.435405] serial8250: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A  
[1.435616] 00:0a: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A  
[12.901934] cdc\_acm 2-5:1.0: ttyACM0: USB ACM device << Arduino UNO
{{< /highlight >}}

## Processing Test Code

{{< highlight java "linenos=table">}}
import processing.serial.*;  
void setup()  
{  
  println(Serial.list());  
}
{{< /highlight >}}


## Result  

```
WARNING:  RXTX Version mismatch  
Jar version = RXTX-2.2pre1  
native lib Version = RXTX-2.2pre2  
[0] "/dev/ttyS0"
```

So, ttyACM0 is not listed  

## Workaround (As root) 

```
root@finally:/dev$ ln -s /dev/ttyACM0 /dev/ttyS4 
```

And then you should get:  

```
WARNING:  RXTX Version mismatch  
Jar version = RXTX-2.2pre1  
native lib Version = RXTX-2.2pre2  
[0] "/dev/ttyS4"  
[1] "/dev/ttyS0"
```

Useful? Please leave your comments ;)
---
### Comments:
#### ah....weno ahora espiquineais...igual no entendi n...
[Anonymous]( "noreply@blogger.com") - <time datetime="2011-12-08T14:18:12.235+13:00">Dec 3, 2011</time>

ah....weno ahora espiquineais...igual no entendi ni jota!!! Anyway I trust u now and ever!!! XXXX ME =P
<hr />
