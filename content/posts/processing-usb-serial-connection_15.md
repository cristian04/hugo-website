---
title: 'Processing: USB Serial connection workaround'
date: 2011-12-07T11:17:00.003+13:00
draft: false
slug: 'Processing: USB Serial connection workaround'
externalLink: ""
series: []
tags: [tutorial, arduino, processing]
categories: [hacks, tech]
---

While I was playing with an `Arduino UNO Microcontroler` and [Processing](http://processing.org/), I found a bug that doesnt allow to connect to the `Arduino` via the `USB Serial Port`.

Here is a workaround to fix it.

```
Issue: Processing not detecting Arduino
```

Kernel Messages:

{{< highlight bash "linenos=table">}}
cristian04@finally:/dev$ dmesg | grep tty  
[0.000000] console \[tty0\] enabled  
[1.435405] serial8250: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A  
[1.435616] 00:0a: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A  
[12.901934] cdc\_acm 2-5:1.0: ttyACM0: USB ACM device << Arduino UNO
{{< /highlight >}}

As you can see, the `arduino` is being recognised on the `ttyACM0 Port`

Now let's see what happens on Processing

### Processing Test Code

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

So, `ttyACM0` is not listed  

## Workaround (As Root) 

```
root@finally:/dev$ ln -s /dev/ttyACM0 /dev/ttyS4 
```

If you run the `Proccessing` test code again, you will get: 

```
WARNING:  RXTX Version mismatch  
Jar version = RXTX-2.2pre1  
native lib Version = RXTX-2.2pre2  
[0] "/dev/ttyS4"  
[1] "/dev/ttyS0"
```

Was this useful? Please leave your comments ;)

---
### Comments:
#### ah....weno ahora espiquineais...igual no entendi n...
[Anonymous](https://www.blogger.com/profile/ "noreply@blogger.com") - <time datetime="2011-12-08T14:18:12.235+13:00">Dec 3, 2011</time>

ah....weno ahora espiquineais...igual no entendi ni jota!!! Anyway I trust u now and ever!!! XXXX ME =P
<hr />
