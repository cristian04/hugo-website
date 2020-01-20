---
title: "Opening ports with magic"
date: 2020-01-20T07:07:27+13:00
draft: true
slug: "Opening ports with magic"
series: [upnp]
tags: []
---
# Use Case

You are working remotely and need to open a port in the router for a service that is running in your local machine. Problem is that you dont manage that router and you cannot access it. 

**Solution**: Use the UPNP protocol to create a forwarding roule without touching the router. 

**Preconditions**: A router with UPNP feature enabled. 

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
 desc: http://192.168.1.119:8008/ssdp/device-desc.xml
 st: upnp:rootdevice

UPnP device found. Is it an IGD ? : http://192.168.1.119:8008/
Trying to continue anyway
Local LAN ip address : unset
GetConnectionTypeInfo failed.
GetStatusInfo failed.
GetLinkLayerMaxBitRates failed.
GetExternalIPAddress failed. (errorcode=-3)
 i protocol exPort->inAddr:inPort description remoteHost leaseTime
GetGenericPortMappingEntry() returned -3 (UnknownError)
```

This command will list all the UPNP devices in the network, such as Chromecasts, printers and TV's. 

# Run a service listening on the network

```bash
nc -l 3128
```

# Configure the router via the UPNP protocol

```bash
upnpc -a `localip` 3128 3128 tcp
```

where `localip` is an alias:

```bash
alias localip='ipconfig getifaddr en0'
``` 

(thanks to [@jessfraz dotfiles](https://github.com/jessfraz/dotfiles/blob/master/.aliases))

{{% notice note %}}
Some ISP's, like MyRepublic, require a `Static Public IP` to enable *port-forwarding*. 

If this doesn't work, check with your ISP.
{{% /notice %}}




