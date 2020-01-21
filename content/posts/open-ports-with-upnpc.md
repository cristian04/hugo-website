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
upnpc -a `localip` 3128 3128 tcp
```

where `localip` is an alias (thanks to [@jessfraz dotfiles](https://github.com/jessfraz/dotfiles/blob/master/.aliases)):

```bash
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"

``` 

{{% notice note %}}
Some ISP's, like [MyRepublic](https://support-nz.myrepublic.net/hc/en-us/articles/218141743-Setting-up-a-port-forwarding-rule), require a **Static Public IP** to enable **port-forwarding**. This is due to [Carrier-Grade NAT (CGN)](https://en.wikipedia.org/wiki/Carrier-grade_NAT) restrictions.

{{% /notice %}}




