---
title: "Opening ports with magic"
date: 2020-01-20T07:07:27+13:00
draft: false
slug: "Opening ports with magic"
series: [upnp]
tags: ['my republic new zealand', 'open ports', 'upnp' , 'networking']
---
# Use Case

You are working remotely and need to open a port in the router for a service that is running in your local machine. Problem is that you dont manage that router and you cannot access it. Maybe, that router is using the UPNP protocol, which might help you out. 

# Install upnpc

```bash
brew install miniupnpc
```

# Test if the UPNP protocol is enabled 

```bash
$ upnpc -l
upnpc : miniupnpc library test client, version 2.1.
 (c) 2005-2018 Thomas Bernard.
Go to http://miniupnp.free.fr/ or https://miniupnp.tuxfamily.org/
for more information.
List of UPNP devices found on the network :
 desc: http://192.168.0.1:6352/rootDesc.xml
 st: urn:schemas-upnp-org:device:InternetGatewayDevice:1

Found a (not connected?) IGD : http://192.168.0.1:6352/ctl/IPConn
Trying to continue anyway
Local LAN ip address : 192.168.0.178
Connection Type : IP_Routed
Status : Connected, uptime=21719377s, LastConnectionError : ERROR_NONE
  Time started : Fri May 17 14:06:17 2019
MaxBitRateDown : 800000000 bps (800.0 Mbps)   MaxBitRateUp 800000000 bps (800.0 Mbps)
ExternalIPAddress = 1x.1x.1xx.x2
 i protocol exPort->inAddr:inPort description remoteHost leaseTime
GetGenericPortMappingEntry() returned 713 (SpecifiedArrayIndexInvalid)
```

This command will list all the UPNP devices in the network, not only routers, but also Chromecasts, printers and TV's. 

# Run a service listening on the network

```bash
nc -l 3128
```

# Configure the router via the UPNP protocol

```bash
upnpc -a ip port external_port protocol [duration] # Add port redirection
```


```bash
$ upnpc -a `localip` 3128 3128 tcp
upnpc : miniupnpc library test client, version 2.1.
 (c) 2005-2018 Thomas Bernard.
Go to http://miniupnp.free.fr/ or https://miniupnp.tuxfamily.org/
for more information.
List of UPNP devices found on the network :
 desc: http://192.168.0.1:6352/rootDesc.xml
 st: urn:schemas-upnp-org:device:InternetGatewayDevice:1

Found a (not connected?) IGD : http://192.168.0.1:6352/ctl/IPConn
Trying to continue anyway
Local LAN ip address : 192.168.0.178
ExternalIPAddress = 1x.1x.1xx.x2
InternalIP:Port = 192.168.0.178:3128
external 1x.1x.1xx.x2:3128 TCP is redirected to internal 192.168.0.178:3128 (duration=0)
```

where `localip` is an alias (thanks to [@jessfraz dotfiles](https://github.com/jessfraz/dotfiles/blob/master/.aliases)):

```bash
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"

```

# Testing

Now, try to connect to the `nc` port by running

```bash
nc <public-ip> 3128
```

{{% notice note %}}
Some ISP's, like [MyRepublic](https://support-nz.myrepublic.net/hc/en-us/articles/218141743-Setting-up-a-port-forwarding-rule), require a **Static Public IP** to enable **port-forwarding**. This is due to [Carrier-Grade NAT (CGN)](https://en.wikipedia.org/wiki/Carrier-grade_NAT) restrictions.

{{% /notice %}}
