---
title: 'Ojo Técnicos, Hay Tabla'
date: 2011-02-10T21:26:00.004+13:00
draft: false
slug: 'Ojo Técnicos, Hay Tabla'
externalLink: ""
series: []
tags: [hay tabla, aj computacion, colossus, relatos, ue, windows xp, reclamos, codelco, saltita, windows desatendidos, cordoba]
---

<p align="center">
  <img src="http://1.bp.blogspot.com/-Y2aZgzBy80U/TVOSpW_hIYI/AAAAAAAAJiE/ZfZDNqfxsF0/s1600/Hay+Tabla.jpg" width="40%"/>
</p>

Hace un tiempo atrás, había posteado sobre trabajos de algunos técnicos en los cuales trabajaban con Windows Desatendidos como ser Windows UE y Colossus edition.  
Hace unos dias, un NUEVO cliente me trajo su computadora porque tenía unos problemas para poder utilizarla. Al revisarla descubrí lo siguiente:  

- Problemas con el software instalado:
- El Office no corría por problemas en su instalacion.
- Programas que se ejecutaban al inicio que el cliente no utilizaba. (Object Dock, otros gadgets, etc)
- Windows ilegal y desactualizado (Service Pack 2) Lo de ilegal es casi normal, pero que este instalado un SP2... #inseguro
- Problemas con el WGA, las notificaciones molestas de que Windows es ilegal.
- Otra cosa que me llamo la atención es que habían instalado una versión de Windows con más de 9 años de antiguedad (si, el XP es del 2002 y todavía le siguen haciendo parches hasta el 2014), siendo que el HW del equipo soportaba una versión mas nueva de Windows ([Windows 7](http://windows.microsoft.com/es-ES/windows7/products/system-requirements)), o una versión de Linux.

[![](http://4.bp.blogspot.com/-dqjMs-tq00c/TVOSo8bP6lI/AAAAAAAAJiA/Lsa_neTI13g/s320/Aj+Propiedades+Pc.jpg)](http://4.bp.blogspot.com/-dqjMs-tq00c/TVOSo8bP6lI/AAAAAAAAJiA/Lsa_neTI13g/s1600/Aj+Propiedades+Pc.jpg)

Me molesto más saber que el servicio técnico que le habían hecho a la computadora, unas semanas atrás,  lo había realizado una empresa muy importante esparcida en Córdoba: **AJ Computación.**

Pero todavía no acabó la sorpresa ahí, también me dí cuenta que "habían instalado" una versión desatendida de Windows XP, el Colossus. Habían instalado todo el software que viene seleccionado por defecto, y no habian configurado nada! Estaba todo como cuando termina la instalación del Colossus.

# Cuánto le cobraron?

$ 300 por la reinstalación.

No me parece mucho ese precio, pero no le encuentro cual es el valor agregado que le dieron a la instalacion si tan solo bajaron un dvd de internet, lo grabaron, lo pusieron a instalar y luego le entregaron la computadora. No entiendo cual es el trabajo que realizaron los tecnicos de AJ.

# El reclamo:

[![](http://2.bp.blogspot.com/-8KbIw39j7X0/TVOSnpCgoOI/AAAAAAAAJh8/6ESRoShGjnw/s400/Aj+Face.png)](http://2.bp.blogspot.com/-8KbIw39j7X0/TVOSnpCgoOI/AAAAAAAAJh8/6ESRoShGjnw/s1600/Aj+Face.png)

El reclamo lo hice por Facebook en la pagina de Fans de AJ, y obviamente tambien en este POST.


Bueno ahora:

¿Qué problemas le encuentro a los Cds de Windows desatendidos?

Generalmente:

- Modifican el Sistema Operativo agregando y quitando cosas, entonces a veces provocan que los sistemas anden mas lentos, y otras veces que no puedas utilizar ciertas funcionalidades. Por ejemplo con Windows XP "FENIX" hay problemas para unirlas a un dominio Active Directory.
- La instalacion de algunos programas es dudosa, como por ejemplo el Office que se descomprime y luego ejecuta algunos comandos para modificar el registro de Windows. Este Office tiene problemas luego para ejecutarse con otros usuarios.
- El software instalado NO siempre es el mismo! Los requerimientos de los clientes varían, por lo cual no podemos estar entregando siempre el mismo producto! Un abogado necesita cierto software y ciertas funcionalidades, un medico otras; la calidad del servicio tiene que ser cumpliendo los requerimientos del cliente.
- Creo que si un usuario baja e instala este SO, esta bien. Pero no perdono que los técnicos estén instalando esto. Menos empresas que ofrecen franquicias.

## Mi Windows Desatendido:

Despues de lo comentado anteriormente, las ventajas que le encuentro al uso de Windows Desatendidos son:

- Facilidad y rapidez para hacer instalaciones
- Estandarizacion de instalaciones de Sistemas Operativos
- Rapidez y comodidad para instalar software.

En mi caso, luego de unos meses de desarrollo y testing he realizado mi propia versión de un Windows Desatendido. Para hacer la misma tuve que leer muuucha documentacion y hacer muucho testing (gracias virtualbox!) Demoré aproximadamente 5 Meses.

## Que es lo que hay de diferente en mi versión? 

- Windows XP SP3 Actualizado hasta Enero 2011
- `Documents & Settings` se guarda por defecto en la unidad D:, de esta manera los Documentos, Musica, Favoritos y el Escritorio se encuentran en otra Particion.
- Tweaks y configuraciones para aumentar el rendimiento y la seguridad del sistema

{{% notice note %}}
Mi Version desatendida de Windows XP es solamente para mis clientes, no esperen un link de descarga. Perdonen. Si necesitan de soporte técnico de calidad, [contactarme aquí](/es/contact/)
{{% /notice %}}

## Como saber si tenes una "buena" version del Windows XP?

Aqui vamos con un par de pasos:

[![](http://t1.gstatic.com/images?q=tbn:ANd9GcSG4SjOnoAez9E8CGCrPTUQAD4pwMyabVMUQ8nQBrBS9JVcYMy9cQ)](http://t1.gstatic.com/images?q=tbn:ANd9GcSG4SjOnoAez9E8CGCrPTUQAD4pwMyabVMUQ8nQBrBS9JVcYMy9cQ)

1.  En el Escritorio, click con el boton derecho sobre `Mi Pc -> Propiedades`  (O un atajo del teclado es tocar la tecla windows+pausa)
2.  Se abrirá el menú `Propiedades del Sistema`. Leer detenidamente las siguientes partes:

- Sistema o Edicion de Windows:
- Service Pack: Si no figura esta palabra, no tenemos instalado ningun Service Pack lo que significa que estamos MUY expuestos a los virus y spyware. Tendria que salir Service Pack 3.
- Ver si figura alguna de las siguientes palabras: Fenix, Fenixteam, Colossus, UE, Bj. En caso de que si figuren, tenes un windows desatendido.
- Cualquier consulta, me comentan el post y lo vemos :smile:
</catarsis>  
</molesto>

---
### Comments:
#### Excelente Post loco!  
Bien detallado y explicand...
[Elias]( "noreply@blogger.com") - <time datetime="2011-03-11T08:04:53.483+13:00">Mar 4, 2011</time>

Excelente Post loco!  
Bien detallado y explicando a fondo.  
  
un abrazo, Elías  
  
P/D: proximamente larga un canal el youtube de IT investiga, deschavando a los tranfujas IT. :D
<hr />
#### y q te contestaron los de aj??  
Pablo
[Anonymous]( "noreply@blogger.com") - <time datetime="2011-03-13T08:43:04.158+13:00">Mar 6, 2011</time>

y q te contestaron los de aj??  
Pablo
<hr />
#### Al parecer no entienden de que se tratan las redes...
[Cristian](https://www.blogger.com/profile/02333717952816180937 "noreply@blogger.com") - <time datetime="2011-03-19T13:07:25.100+13:00">Mar 5, 2011</time>

Al parecer no entienden de que se tratan las redes sociales...  
En la publicacion en Facebook solamente algunas personas hicieron click en Me Gusta.  
En cuanto a AJ, solamente sigue publicando ofertas en el muro  
El tema de hacer tu empresa social friendly o enabled es que recibas todos los comentarios, sugerencias y criticas. Lo mas importante en integrar tu empresa con Twitter, Facebook y otras redes es el feedback en tiempo real practicamente....
<hr />
