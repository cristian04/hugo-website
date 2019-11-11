---
title: 'Bajando muchos subtitulos para peliculas en Linux'
date: 2014-06-30T13:34:00.003+12:00
draft: false
slug: 'Bajando muchos subtitulos para peliculas en Linux'
externalLink: ""
series: []
tags: [tutorial, peliculas, linux, subtitulos]
---

Como ya comenté en el post de [media center casero](https://blog.cristianmarquez.me/2014/06/media-center-casero-utilizando-upnpdlna.html) , utilizo XBMC para la gestión de mis archivos multimedia.  
[![](http://4.bp.blogspot.com/-r0hLHU31BLY/U7C4TesUY8I/AAAAAAAAZmg/_rp9gPBeBSc/s1600/Pantallazo-XBMC+Media+Center.png)](http://4.bp.blogspot.com/-r0hLHU31BLY/U7C4TesUY8I/AAAAAAAAZmg/_rp9gPBeBSc/s1600/Pantallazo-XBMC+Media+Center.png)En cuanto a la parte de subtitulos, XBMC tiene un plugin llamado **subtitles**, que permite descargarlos desde diferentes fuentes (subdivx, opensubtitles, argenteam, etc) y en diferentes idiomas.  
De todas maneras, tenia dos inconvenientes particulares con XBMC:  

1.  Los subtitulos que XBMC descarga terminan con el formato .<idioma>.srt, lo que hacia que mi TV no pueda visualizarlo. Los TV Samsung necesitan que los subtitulos tengan el mismo nombre que el archivo de video. Lo único que cambia es la extensión.
2.  No podía descargar los subtitulos de todos los archivos. Mi colección actual es de mas de 1000 películas y con XBMC hacia falta descargar los subtitulos película por película.

Gracias a un poquito de research, encontré una solución para esto.

[Periscope](https://github.com/patrickdessalle/periscope) es un modulo de python que permite descargar subtitulos de internet. También soporta diferentes fuentes e idiomas y el formato en el cual escribe el subtitulo es compatible con la mayoría de dispositivos (solamente cambia la extensión del archivo).

La sintaxis del comando es muy fácil:

```
periscope <path\>  \-l idioma
```

El <path\> puede ser un archivo de video o un directorio. La búsqueda es recursiva.

El idioma es el id del idioma: "**es**" español "**en**" ingles "**es-ar**" español argentina

  

Ejemplo:

[![](http://1.bp.blogspot.com/-rZC0XfFyRaw/U7C-KeaPG-I/AAAAAAAAZnA/3KiOsb8BOM8/s1600/Pantallazo-Terminal-2.png)](http://1.bp.blogspot.com/-rZC0XfFyRaw/U7C-KeaPG-I/AAAAAAAAZnA/3KiOsb8BOM8/s1600/Pantallazo-Terminal-2.png)

Arrancando el comando

  

  

[![](http://1.bp.blogspot.com/-jKI5rUYo14k/U7C9zMaq85I/AAAAAAAAZm4/ZU-wv4wmBz8/s1600/Pantallazo-Terminal.png)](http://1.bp.blogspot.com/-jKI5rUYo14k/U7C9zMaq85I/AAAAAAAAZm4/ZU-wv4wmBz8/s1600/Pantallazo-Terminal.png)

Salida del comando. Se puede ver como va bajando subtitulos y de donde 

[![](http://2.bp.blogspot.com/-Jnm8nM7XdBc/U7C_CaiXJyI/AAAAAAAAZnM/7XPjmgK8JGI/s1600/Pantallazo-Peliculas.png)](http://2.bp.blogspot.com/-Jnm8nM7XdBc/U7C_CaiXJyI/AAAAAAAAZnM/7XPjmgK8JGI/s1600/Pantallazo-Peliculas.png)

Archivos

Espero que les sirva!