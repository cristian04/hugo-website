---
title: 'Acelerando el emulador de Android'
date: 2013-12-19T04:22:00.002+13:00
draft: false
slug: 'Acelerando el emulador de Android'
externalLink: ""
series: []
tags: [tutorial, intel, emulador, virtualizacion, Android]
---

Seguramente muchas personas que utilizan el emulador de android notaron que, para versiones superiores a 2.3, el rendimiento no es muy bueno. El emulador se vuelve lento y el tiempo de respuesta entre interacciones no es aceptable.

En el siguiente post les dejo un procedimiento para accelerar el performance del emulador, aprovechando instrucciones de virtualización de nuestro procesador.  
  
{{% notice note %}}
El siguiente procedimiento necesita de una maquina con procesador Intel, con las opciones Intel VT-x, EM64T yExecute Disable(XD) Bit habilitadas en el BIOS
{{% /notice %}}

### Procedimiento para S.O. Windows:

- Abrir SDK Manager
- Descargar Intel x86 Emulator Accelerator y las imagen de sistema de Intel (Intel x86 Atom System Image) 
<p align="center">
<img src="http://software.intel.com/sites/default/files/haxm01.png" width="70%"/>
</p>
    
- Instalar IntelHaxm.exe, disponible en ANDROID\_HOME/extras/intel/Hardware\_Accelerated\_Execution\_Manager. 
    
<p align="center">
<img src="http://software.intel.com/sites/default/files/haxm02.png" width="60%"/>
</p>
<p align="center">
<img src="http://software.intel.com/sites/default/files/haxm03.png" width="60%"/>
</p>

<p align="center">
<img src="http://software.intel.com/sites/default/files/haxm04.jpg" width="60%"/>
</p>
    
- Crear un nuevo Android Virtual Device (AVD) usando el AVD Manager. 

<p align="center">
<img src="http://software.intel.com/sites/default/files/haxm12.png" width="60%"/>
</p>

- Disfrutar

## Procedimiento para S.O. Linux:

Link oficial (en ingles): [http://software.intel.com/en-us/articles/speeding-up-the-android-emulator-on-intel-architecture](http://software.intel.com/en-us/articles/speeding-up-the-android-emulator-on-intel-architecture)

---
### Comments:
#### Se nota el cambio, gracias. :)
[Franco](http://codenatic.com "noreply@blogger.com") - <time datetime="2013-12-19T04:47:28.930+13:00">Dec 3, 2013</time>

Se nota el cambio, gracias. :)
<hr />