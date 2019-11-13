---
title: 'Comandos, tips y programas en Linux'
date: 2014-07-01T16:59:00.002+12:00
draft: false
slug: 'Comandos, tips y programas en Linux'
externalLink: ""
series: []
tags: [tutorial, linux, relatos, Android]
---

[![](http://4.bp.blogspot.com/-aNmWN3Co_Cc/U7GDtcqy9VI/AAAAAAAAZns/usg7klHCjQw/s1600/tips_linux-1.png)](http://4.bp.blogspot.com/-aNmWN3Co_Cc/U7GDtcqy9VI/AAAAAAAAZns/usg7klHCjQw/s1600/tips_linux-1.png)

Hola! En este post vuelvo a mis orígenes, compartiendo algunas cosas del mundo linuxero. En vez de poner el nombre de un comando y que es lo que hace, voy a poner preguntas cotidianas y con que comando pude encontrar la respuesta.  

Espero que les sirva!  

### Mi distro:

Antes que nada, veamos que distro tengo.  

Si ejecuto **lsb\_release -a** van a ver lo siguiente:  

```bash
$ lsb_release -a  
No LSB modules are available.  
Distributor ID: LinuxMint  
Description: Linux Mint 16 Petra  
Release: 16  
Codename: petra
``` 

## Comandos útiles:

- ¿Como saber que esta haciendo el sistema? ¿Que le pasa a mi maquina?
    Algunas veces nos pasa que "sentimos" lento el sistema, o tenemos problemas para conectarnos a Wifi, algo no nos funciona, etc, y queremos saber que es lo que pasa por abajo.   

    En linux podemos ver los mensajes del kernel mediante el comando `dmesg` que nos muestra algo parecido a esto:  

[![](http://1.bp.blogspot.com/-GX34KOKsNvM/U7HukxPr7iI/AAAAAAAAZoA/go1-vi9TUqA/s1600/lnxkernel.gif)](http://1.bp.blogspot.com/-GX34KOKsNvM/U7HukxPr7iI/AAAAAAAAZoA/go1-vi9TUqA/s1600/lnxkernel.gif)

En ese log vamos a poder ver que esta haciendo el sistema (siempre y cuando las aplicaciones escriban en el log)

- ¿Como leer logs en tiempo real?

Tambien nos puede pasar que necesitemos ver el log de una aplicacion que no esta relacionada con el kernel, por lo que leemos su log. (La mayoria de los logs deben estar en `/var/log`) A la hora de debuggear una aplicacion, vamos a necesitar ver que hace en tiempo real, por lo que podemos recurrir al comando **tail -f** que nos permitirá hacerlo. De esta manera, visualizaremos el contenido del archivo a medida que es escrito.  

[![](http://3.bp.blogspot.com/-0vCKUcHs4Ko/U7I60Rr08zI/AAAAAAAAZow/RHfyldImjzE/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~-3.png)](http://3.bp.blogspot.com/-0vCKUcHs4Ko/U7I60Rr08zI/AAAAAAAAZow/RHfyldImjzE/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~-3.png)

- ¿Que aplicacion esta consumiendo mi ancho de banda?

Eso mismo. Tengo tantas cosas corriendo en mi maquina que quiero saber cual se esta comiendo mi conexion. El comando **iftop** nos muestra el uso de ancho de banda por procesos.  

[![](http://4.bp.blogspot.com/-PDKAxGdXOUs/U7I65xOQQ5I/AAAAAAAAZo4/e4G1hkyYc1M/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~-2.png)](http://4.bp.blogspot.com/-PDKAxGdXOUs/U7I65xOQQ5I/AAAAAAAAZo4/e4G1hkyYc1M/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~-2.png)

- ¿Que aplicacion esta tonteando usando con mi disco duro?

Idem anterior pero para ver quien esta utilizando el disco duro. Para esto tenemos el comando **iotop**

[![](http://3.bp.blogspot.com/-PWROypbSqxU/U7I6_rdIpzI/AAAAAAAAZpA/F-fo1zPG7Ig/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~-1.png)](http://3.bp.blogspot.com/-PWROypbSqxU/U7I6_rdIpzI/AAAAAAAAZpA/F-fo1zPG7Ig/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~-1.png)

- Explorador del sistema de archivo desde command line

Si trabajaste con computadoras en la epoca del Windows 95 y 3.1, seguramente la imagen de **mc** te es familiar. La interfaz es muy parecida al **Norton Comander,** pero en Linux es **Midnight Commander.** Conserva los mismos atajos de teclado que el Norton: F5 para copiar archivos, F6 para moverlos, F8 para borrarlos y F9 para acceder al menu. Ahi podemos conectarnos a un servidor por SSH o FTP. **Altamente recomendado**

[![](http://1.bp.blogspot.com/-W8I_fzoo0LY/U7I7FgEpMSI/AAAAAAAAZpI/laA3-z3jqZA/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~.png)](http://1.bp.blogspot.com/-W8I_fzoo0LY/U7I7FgEpMSI/AAAAAAAAZpI/laA3-z3jqZA/s1600/Pantallazo-mc+%5Bcristian04@h4ck3r%5D:~.png)

#### Editor de texto en consola

Fácil: **nano.** Mas fácil que usar **vi** o **vim**. También esta **mcedit** que viene con el **Midnight Commander**  

[![](http://4.bp.blogspot.com/-63azoc6Cpw8/U7I7Ktb_7QI/AAAAAAAAZpQ/26kEnakqsAM/s1600/Pantallazo-Terminal-2.png)](http://4.bp.blogspot.com/-63azoc6Cpw8/U7I7Ktb_7QI/AAAAAAAAZpQ/26kEnakqsAM/s1600/Pantallazo-Terminal-2.png)

[![](http://4.bp.blogspot.com/-aMVtpRXwpwM/U7I7PH1FiII/AAAAAAAAZpY/W_h5-36dPWg/s1600/Pantallazo-Terminal-3.png)](http://4.bp.blogspot.com/-aMVtpRXwpwM/U7I7PH1FiII/AAAAAAAAZpY/W_h5-36dPWg/s1600/Pantallazo-Terminal-3.png)

- ¿Como puedo ver el "administrador de tareas" en consola?

Si bien con **ps aux** podemos ver todos los procesos que esta corriendo el sistema, **top** permite verlos en tiempo real. Lo mismo con **htop** pero éste ultimo es mas bonito y muestra los micros.  

[![](http://4.bp.blogspot.com/-vTxnTcWkbHo/U7I55Dh1t_I/AAAAAAAAZog/qDbjAPa41JI/s1600/Pantallazo-Terminal.png)](http://4.bp.blogspot.com/-vTxnTcWkbHo/U7I55Dh1t_I/AAAAAAAAZog/qDbjAPa41JI/s1600/Pantallazo-Terminal.png)

[![](http://2.bp.blogspot.com/-pISad5g7wvc/U7I55I0fDNI/AAAAAAAAZoc/PqYZ6Iqv8Oc/s1600/Pantallazo-Terminal-1.png)](http://2.bp.blogspot.com/-pISad5g7wvc/U7I55I0fDNI/AAAAAAAAZoc/PqYZ6Iqv8Oc/s1600/Pantallazo-Terminal-1.png)

- ¿Quiero conocer en que red estoy?

Para analizar nuestra red tenemos varios comandos. Los que mas utilizo son:  
**ifconfig** para saber que ip tengo asignada  
**route** para conocer mi puerta de enlace  
**cat /etc/resolv.conf** para conocer los dns que tengo configurados  
**nmap** para ver que puertos tiene abiertos el gateway  

[![](http://1.bp.blogspot.com/-nZ5wdS2MZBU/U7I_VV_51wI/AAAAAAAAZp4/03Me9xHWu3g/s1600/Pantallazo-Terminal-6.png)](http://1.bp.blogspot.com/-nZ5wdS2MZBU/U7I_VV_51wI/AAAAAAAAZp4/03Me9xHWu3g/s1600/Pantallazo-Terminal-6.png)

- ¿Como buscar un archivo? ¿Como buscar un archivo que contenga un texto determinado?

Para ambos casos usamos **find**  
Si queremos buscar un archivo por nombre, la sintaxis es **find . -name <nombre>**  
En el caso de que queremos buscar un archivo que contiene x texto, la sintaxis es: **find . -type f | xargs grep -i <texto\_a\_buscar>**  

[![](http://2.bp.blogspot.com/-MV2chKsTx_U/U7I_Z6Q03oI/AAAAAAAAZqA/xusEvtk1V4U/s1600/Pantallazo-Terminal-4.png)](http://2.bp.blogspot.com/-MV2chKsTx_U/U7I_Z6Q03oI/AAAAAAAAZqA/xusEvtk1V4U/s1600/Pantallazo-Terminal-4.png)

- ¿Cuantas particiones tengo? ¿Como montarlas?

Como **root**, ejecutamos el comando **fdisk -l.** Ahi vamos a ver todas las particiones de nuestro disco.

[![](http://4.bp.blogspot.com/-Z4elAvagBQw/U7I_dxlABeI/AAAAAAAAZqI/vd8AohjKCCk/s1600/Pantallazo-Terminal-5.png)](http://4.bp.blogspot.com/-Z4elAvagBQw/U7I_dxlABeI/AAAAAAAAZqI/vd8AohjKCCk/s1600/Pantallazo-Terminal-5.png)

# Tools gráficas

## ¿Que esta pasando en mi red local?

**Etherape** permite ver de manera gráfica, que esta pasando en nuestra red.

[![](http://4.bp.blogspot.com/-SXAJNxMUj1c/U7I9CqD6voI/AAAAAAAAZpk/dUf0eX-nRcs/s1600/Pantallazo-EtherApe.png)](http://4.bp.blogspot.com/-SXAJNxMUj1c/U7I9CqD6voI/AAAAAAAAZpk/dUf0eX-nRcs/s1600/Pantallazo-EtherApe.png)

## ¿Que dispositivos tengo en mi red local con UPNP y que puedo hacer con ellos?

Esta un poco mas explicado en el post del [hacking al smart tv](/es/posts/hackeando-un-smart-tv-samsung-un46eh5300g/) . **Upnp-inspector** es una tool escrita en python que permite ver que tenemos en nuestra red y como podemos interactuar con esos dispositivos.  

[![](http://3.bp.blogspot.com/-XrfH72TrooM/U7I-6nbqSHI/AAAAAAAAZpw/EEu-0klDBhI/s1600/Pantallazo-UPnP+Inspector.png)](http://3.bp.blogspot.com/-XrfH72TrooM/U7I-6nbqSHI/AAAAAAAAZpw/EEu-0klDBhI/s1600/Pantallazo-UPnP+Inspector.png)
  
Pregunta para ustedes... ¿que comando utilizan y en que situaciones?