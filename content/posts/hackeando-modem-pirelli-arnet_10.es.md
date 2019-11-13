---
title: 'Hackeando Modem Pirelli (Arnet)'
date: 2011-02-10T22:54:00.004+13:00
draft: false
slug: 'Hackeando Modem Pirelli (Arnet)'
externalLink: ""
series: []
tags: [pirelli, linux, telnet, Arnet, comandos, DRG A125G, hacking]
categories: [hackeando, tecnologia, redes]
---

[![](http://3.bp.blogspot.com/-XWWunV78Xvc/TVO0ckQfE4I/AAAAAAAAJiI/mkAe5nMc1-0/s200/777707812.jpg)](http://3.bp.blogspot.com/-XWWunV78Xvc/TVO0ckQfE4I/AAAAAAAAJiI/mkAe5nMc1-0/s1600/777707812.jpg)

Aquí les dejo un video con algunas cositas que se pueden hacer con un módem de arnet, el Pirelli Wifi DRG A125G. 

{{<youtube vbCCBrvLXbs >}}

Como podran ver, el router tiene una distro de Linux embebida. Por lo menos disponemos de `iptables` y otros comandos para jugar un rato.

Espero que les sirva.  

{{% notice tip %}}
En la parte que mostré el código fuente, ustedes pueden encontrar la contraseña y el usuario con el cual se conectan a Internet, lo mismo cuando hice el dump de la configuración: dumpcfg  

{{% /notice %}}
  
### Actualizado 19/Feb/2011

Dejo aquí la documentación y ejemplos de algunos comandos útiles.  

Saludos  

{{< highlight bash "linenos=table">}}

?  
help  
logout  
reboot  
adsl  
\> adsl  
Usage: adsl start \[--up\] \[--mod <a|d|l|t|2|p|e|m>\] \[--lpair <(i)nner|(o)uter>\]  
           \[--trellis <on|off>\] \[--snr <snrQ4>\] \[--bitswap <on|off>\] \[--sesdrop  
<on|off>\] \[--sra <on|off>\]  
           \[--CoMinMgn <on|off>\] \[--i24k <on|off>\] \[--phyReXmt <on|off>\]  
       adsl stop  
       adsl connection \[--up\] \[--down\] \[--loopback\] \[--reverb\]  
           \[--medley\] \[--noretrain\] \[--L3\] \[--diagmode\] \[--L0\]  
           \[--tones\]  
       adsl configure \[--mod <a|d|l|t|2|p|e|m>\] \[--lpair <(i)nner|(o)uter>\]  
           \[--trellis <on|off>\] \[--snr <snrQ4>\] \[--bitswap <on|off>\] \[--sesdrop  
<on|off>\] \[--sra <on|off>\]  
           \[--CoMinMgn <on|off>\] \[--i24k <on|off>\] \[--phyReXmt  <on|off>\]  
       adsl bert \[--start <#seconds>\] \[--stop\] \[--show\]  
       adsl afelb \[--time (sec)\] \[--tones\] \[--signal <1/2/8>\]  
       adsl qlnmntr \[--time (sec)\]\[--freq (msec)\]  
       adsl info \[--state\] \[--show\] \[--stats\] \[--SNR\] \[--QLN\] \[--Hlog\] \[--Hlin\]  
\[--HlinS\] \[--Bits\] \[--linediag\] \[--reset\]\[--vendor\]  
           \[--cfg\]  
       adsl --version  
       adsl --help  
  
\> adsl info --show  
adsl: ADSL driver and PHY status  
Status: ShowtimeRetrain Reason: 0  
Channel: FAST, Upstream rate = 253 Kbps, Downstream rate = 3071 Kbps  
Link Power State: L0  
Mode:                   ADSL2  
Channel:                Fast  
Trellis:                U:ON /D:ON  
Line Status:            No Defect  
Training Status:        Showtime  
                Down            Up  
SNR (dB):       30.4            33.4  
Attn(dB):       13.5            7.2  
Pwr(dBm):       8.2             1.4  
Max(Kbps):      11040           1281  
Rate (Kbps):    3071            253  
                        G.dmt framing  
K:              96(0)           8  
R:              0               0  
S:              1               1  
D:              1               1  
                        ADSL2 framing  
MSGc:           59              17  
B:              95              7  
M:              1               1  
T:              1               3  
R:              0               0  
S:              0.9896          0.9696  
L:              776             66  
D:              1               1  
                        Counters  
SF:             28688           28814  
SFErr:          0               0  
RS:             0               0  
RSCorr:         0               0  
RSUnCorr:       0               0  
  
HEC:            0               2267  
OCD:            0               0  
LCD:            0               0  
Total Cells:    3347195         2242308208  
Data Cells:     64423           2927128192  
Drop Cells:     0  
Bit Errors:     0               28075  
  
ES:             0               102  
SES:            0               71  
UAS:            16              180625  
AS:             462  
  
INP:            0.00            0.00  
PER:            16.08           16.72  
delay:          0.24            0.24  
OR:             32.33           11.00  
  
Bitswap:        3               1  
  
  
  
atm  
  
brctl  
  
\> brctl  
commands:  
        addbr           <bridge>                add bridge  
        delbr           <bridge>                delete bridge  
        addif           <bridge> <device>       add interface to bridge  
        delif           <bridge> <device>       delete interface from bridge  
        setageing       <bridge> <time>         set ageing time  
        setbridgeprio   <bridge> <prio>         set bridge priority  
        setfd           <bridge> <time>         set bridge forward delay  
        sethello        <bridge> <time>         set hello time  
        setmaxage       <bridge> <time>         set max message age  
        setpathcost     <bridge> <port> <cost>  set path cost  
        setportprio     <bridge> <port> <prio>  set port priority  
        setportsnooping <bridge> <port> <addr>  set port snooping  
        clearportsnooping       <bridge> <port> <addr>  clear port snooping  
        showportsnooping        <bridge>        show port snooping  
        enableportsnooping      <enable>                enable port snooping  
        show                                    show a list of bridges  
        showmacs        <bridge>                show a list of mac addrs  
        showstp         <bridge>                show bridge stp info  
        stp             <bridge> <state>        turn stp on/off  
\> brctl show  
bridge name     bridge id               STP enabled     interfaces  
br0             8000.021018010002       no              usb0  
                                                        eth0  
                                                        wl0  
                                                        nas\_0\_0\_33  
  
  
cat  
ddns  
\> ddns  
ddns add hostname --username username --password password --interface interface  
\--service tzo|dyndns  
     remove hostname  
     show  
  
df 
\> df  
Filesystem           1k-blocks      Used Available Use% Mounted on  
/dev/mtdblock0            2752      2752         0 100% /  
tmpfs                      320       148       172  46% /var  
  
dumpcfg  
echo  
ifconfig  
kill
arp  
\> arp show  
  
IP address       HW type     Flags       HW address            Mask     Device  
10.0.0.3         0x1         0x2         00:13:02:29:24:8E     \*        br0  
10.0.0.1         0x1         0x0         00:00:00:00:00:00     \*        br0  
10.0.0.6         0x1         0x2         00:26:B6:E4:80:39     \*        br0  
10.0.0.5         0x1         0x2         00:18:E7:76:A6:20     \*        br0  
10.0.0.4         0x1         0x2         00:23:CD:BB:85:FC     \*        br0  
  
  
defaultgateway  
\> defaultgateway  
  
Usage: defaultgateway config auto  
       defaultgateway config static <\[<IP address>\] \[<interface>\]>  
       defaultgateway show  
       defaultgateway --help  
\> defaultgateway show  
  
Kernel IP routing table  
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface  
200.3.60.21     \*               255.255.255.255 UH    0      0        0 ppp\_0\_0\_33\_1  
10.0.0.0        \*               255.255.255.0   U     0      0        0 br0  
default         200.3.60.21     0.0.0.0         UG    0      0        0 ppp\_0\_0\_33\_1  
  
dhcpserver
\> dhcpserver  
  
Usage: dhcpserver config <start IP address> <end IP address> <leased time (hour)  
\>  
       dhcpserver show  
       dhcpserver --help  
\> dhcpserver show  
  
start 10.0.0.3  
end 10.0.0.99  
interface br0  
decline\_file /var/udhcpd.decline  
option lease 86400  
option min\_lease 30  
option subnet 255.255.255.0  
option router 10.0.0.2  
option dns 10.0.0.2  

dns  
\> dns  
  
Usage: dns config auto  
  
Usage: dns config static \[<primary DNS> \[<secondary DNS>\]\]  
       dns show  
       dns --help  
\> dns show  
  
Primary   200.45.191.35  
Secondary 200.45.48.233  
  
lan  
\> lan  
  
Usage: lan config \[--ipaddr <primary|secondary> <IP address> <subnet mask>\]  
                  \[--dhcpserver <enable|disable>\]  
       lan delete --ipaddr <primary|secondary>  
       lan show \[<primary|secondary>\]  
       lan --help  
\> lan show  
br0             Link encap:Ethernet  HWaddr 02:10:18:01:00:02  
                inet addr:10.0.0.2  Bcast:10.0.0.255  Mask:255.255.255.0  
                UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1  
                RX packets:40838 errors:0 dropped:0 overruns:0 frame:0  
                TX packets:67081 errors:0 dropped:0 overruns:0 carrier:0  
                collisions:0 txqueuelen:0  
                RX bytes:2779748 (2.6 MiB)  TX bytes:93515712 (89.1 MiB)  
  
br0:0           Link encap:Ethernet  HWaddr 02:10:18:01:00:02  
                UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1  
  
passwd 
\> passwd  
  
Usage: passwd <admin|support|user> <password>  
       passwd --help  
  
ppp  
\> ppp  
  
Usage: ppp config <port.vpi.vci> \[<connection id>\] <up|down>  
       ppp --help  
       connect or disconnect ppp  
  
remoteaccess  
\> remoteaccess  
  
Usage: remoteaccess <enable|disable> \[--service <servicename>\]  
       remoteaccess show \[--service <servicename>\]  
       remoteaccess --help  
\> remoteaccess show  
remote access for FTP is disabled  
remote access for HTTP is disabled  
remote access for ICMP is enabled  
remote access for SNMP is disabled  
remote access for SSH is disabled  
remote access for TELNET is disabled  
remote access for TFTP is disabled  
  
restoredefault
  
route  
\> route  
  
Usage: route add <IP address> <subnet mask> <\[<gateway>\] \[<interface>\]>  
       route delete <IP address> <subnet mask>  
       route show  
       route --help  
\> route show  
  
Kernel IP routing table  
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface  
200.3.60.21     \*               255.255.255.255 UH    0      0        0 ppp\_0\_0\_33\_1  
10.0.0.0        \*               255.255.255.0   U     0      0        0 br0  
default         200.3.60.21     0.0.0.0         UG    0      0        0 ppp\_0\_0\_33\_1  
  
save  
  
swversion 
\> swversion  
  
Usage: swversion show  
       swversion --help  
\> swversion show  
1550\_090908-3.10L.02.A2pB022e3.d20h  
 DCWF\_TA\_4\_0\_1  
  
logtrace 
\> logtrace  
command NOT executed  
command executed  
  
testled  
\> testled  
nothing done ...  
  
changemac
  
\> changemac  
current num of mac: 13  
current base mac address: 00:22:33:33:be:82  
Enter number of mac address (def:11)  ....  
Enter base mac address (def:02:10:18:01:00:02)  ....  
NEW num of mac: 11  
NEW base mac address: 02:10:18:01:00:02  
  
  
        Done! ........... reboot  
  
  
wan
\> wan  
  
Usage: wan config <port.vpi.vci> \[<connection id>\]  
       \[--protocol <bridge|pppoe|pppoa|mer|ipoa>\] \[--encap <llc|vcmux>\]  
       \[--vlan <vlan id>\] \[--state <enable|disable>\] \[--service <servicename>\]  
       \[--firewall <enable|disable>\] \[--nat <enable|disable>\]  
       \[--igmp <enable|disable>\] \[--qos <enable|disable>\]  
       \[--username <username> --password <password>\]  
       \[--pppidletimeout <timeout>\] \[--pppipextension <disable|enable>\]  
       \[--ipaddr <wanipaddress> <wansubnetmask\]  
       \[--dhcpclient <enable|disable>\]  
       wan delete <port.vpi.vci> \[<connection id>\]  
       wan show \[<port.vpi.vci>\]  
       wan --help <bridge|pppoe|pppoa|mer|ipoa>  
\> wan show  
VCC     Con.    Catego. Service         Interface       Proto.  IGMP    QoS  
State   Status  IP  
        ID              Name            Name  
                address  
0.0.33  1       UBR     Telecom Argentina       ppp\_0\_0\_33\_1    PPPoE   Disable  
Enable  Enable  PPP Down  
  
ping  
ps  
pwd  
  
siproxd
siproxd <enable|disable|show>  
siproxd --help  
\> siproxd show  
siproxd: SIP proxy is enabled.  
  
sntp  
sntp -s server \[ -s server2 \] -t "timezone"  
     disable  
     date  
     zones  
sntp --help>  
  
  
sysinfo 
\> sysinfo  
Number of processes: 23  
 12:05am  up 5 min,  
load average: 1 min:0.00, 5 min:0.05, 15 min:0.02  
              total         used         free       shared      buffers  
  Mem:        14144         8900         5244            0          476  
 Swap:            0            0            0  
Total:        14144         8900         5244  
  
tftp  
\> tftp  
BusyBox v1.00 (2008.09.09-13:53+0000) multi-call binary  
  
Usage: tftp \[OPTION\]... tftp\_server\_ip  
  
Update firmware image and configuration data from OR backup configuration  
data to a tftp server.  
  
Options:  
\-g      Get file. (Update image/configuration data)  
\-p      Put file. (backup configuration data)  
\-f      remote file name.  
\-t      i for image and c for configuration data.  
  
wlctl
{{< /highlight >}}

---
### Comments:
#### Hola Cristian, calculo q sos mi ultima esperanza, ...
[Hernán](https://www.blogger.com/profile/02707883545598609753 "noreply@blogger.com") - <time datetime="2013-11-06T02:14:26.748+13:00">Nov 2, 2013</time>

Hola Cristian, calculo q sos mi ultima esperanza, te comento, por querer configurar una nueva conexion en el modem quise actualizar el firmware y luego de actualizarlo supuestamente el modem quedo muerto, descubri q manteniendo presionado el reset por 30 seg aproximadamente me permite entrar a una pantalla (192.168.1.1) donde solo tengo la opcion de poner un nuevo firmware, me baje como 10 de paginas polacas y afines y solo me toma uno, los demas me dice q es un archivo invalido, y lo tengo ahi muerto al modem, un amigo tiene el mismo modem y queria saber como puedo hacer para backupear el firmware de arnet por lo menos y volverlo a poner, o si sabes de algun lado que tenga un firmware valido, espero puedas darme una mano, muchas gracias, un saludo.
<hr />
#### Hola Cristian!!  
  
Primero lo primero. Felicit...
[Pablo]( "noreply@blogger.com") - <time datetime="2015-05-01T07:16:21.217+12:00">Apr 4, 2015</time>

Hola Cristian!!  
  
Primero lo primero. Felicitaciones.  
Si bien soy de sistemas, no soy especialista en el area de redes...  
Obvio que igual me interiorizo a la fuerza para arreglar cosas basicas de mis conexiones y problemas varios...  
Tus articulos son excelentes y de gran ayuda aunque sea no mas para despertar la curiosidad de cuanto que puede hacerse si uno supiera un poco mas de tu especialidad...  
  
Tengo una consulta respecto justamente a las capacidades de mi modem Pirelli de Arnet (WIFI) DRG125 ... La consulta es respecto de si tiene capacidad para hacer 'Address Reservation' del dhcp para las conexiones wifi... Si es asi y sabes como se configura, te lo agradeceria mucho para evitarme hacer infinitas pruebas y macanas de algo que tal vez sea muy sencillo de exponer para vos.  
Para darte el marco de referencia, te digo que necesitaria tener la red de la casa con ip estaticas (fijas) y mayormente de conexiones wifi.  
Tengo entendido que si dispongo de Address Reservation¨ en las capacidades dhcp, seria muy facil administrar toda la red de IPs estaticas sean estas conexiones wifi o cableadas...  
  
Espero puedas ayudarme!!  
mi correo es pablou25@yahoo.com.ar  
  
Muchas gracias!!  
Saludos por Cordoba si todavia vivis ahi... y segui escribiendo articulos interesantes !!
<hr />
