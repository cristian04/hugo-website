---
title: 'Linux + Disco RAMDISK'
date: 2009-11-16T17:27:00.002+13:00
draft: false
slug: 'Linux + Disco RAMDISK'
externalLink: ""
series: []
tags: [linux, tutorial]
---

Buenas.. dejo un pequeño tutorial para montar un poco de memoria ram para trabajar en ella.


Primero vamos a ver que encontramos en /dev/ram.

```bash
ls -l /dev/ram*
brw-rw---- 1 root disk 1,  0 2008-06-20 19:09 /dev/ram0
brw-rw---- 1 root disk 1,  1 2008-06-20 19:07 /dev/ram1
brw-rw---- 1 root disk 1, 10 2008-06-20 19:07 /dev/ram10
brw-rw---- 1 root disk 1, 11 2008-06-20 19:07 /dev/ram11
brw-rw---- 1 root disk 1, 12 2008-06-20 19:07 /dev/ram12
brw-rw---- 1 root disk 1, 13 2008-06-20 19:07 /dev/ram13
brw-rw---- 1 root disk 1, 14 2008-06-20 19:07 /dev/ram14
brw-rw---- 1 root disk 1, 15 2008-06-20 19:07 /dev/ram15
brw-rw---- 1 root disk 1,  2 2008-06-20 19:07 /dev/ram2
brw-rw---- 1 root disk 1,  3 2008-06-20 19:07 /dev/ram3
brw-rw---- 1 root disk 1,  4 2008-06-20 19:07 /dev/ram4
brw-rw---- 1 root disk 1,  5 2008-06-20 19:07 /dev/ram5
brw-rw---- 1 root disk 1,  6 2008-06-20 19:07 /dev/ram6
brw-rw---- 1 root disk 1,  7 2008-06-20 19:07 /dev/ram7
brw-rw---- 1 root disk 1,  8 2008-06-20 19:07 /dev/ram8
brw-rw---- 1 root disk 1,  9 2008-06-20 19:07 /dev/ram9
```

Veamos los que nos dice el Kernel..

```bash
dmesg | grep RAMDISK
RAMDISK driver initialized: 16 RAM disks of 64000K size 1024 blocksize
```

`DMESG` nos dice que tenemos 16 discos RAM (/dev/ram0, /dev/ram1, … /dev/ram15) cada uno de 64MB. Para poder utilizar alguno de ellos tenemos que darle formato con algun tipo de ficheros soportado. Linux usa generalmente ext3, reiserfs, etc. pero en este caso vamos a utilizar ext2 debido a que es mas liviano y no necesitamos el log de transacciones.

Hacemos entonces:

```bash
mkfs.ext2 /dev/ram0
mke2fs 1.40-WIP (14-Nov-2006)
Etiqueta del sistema de ficheros=
Tipo de SO: Linux
Tamaño del bloque=1024 (bitácora=0)
Tamaño del fragmento=1024 (bitácora=0)
16000 nodos i, 64000 bloques
3200 bloques (5.00%) reservados para el súper usuario
Primer bloque de datos=1
Maximum filesystem blocks=65536000
8 bloque de grupos
8192 bloques por grupo, 8192 fragmentos por grupo
2000 nodos i por grupo
Respaldo del súper bloque guardado en los bloques:
	8193, 24577, 40961, 57345

Mientras se escribían las tablas de nodos i: terminado
Escribiendo superbloques y la información contable del sistema de ficheros: hecho

Este sistema de ficheros se revisará automáticamente cada 39 meses o
180 dias, lo que suceda primero.  Utilice tune2fs -c o -i para cambiarlo.
Terminado este paso, nos queda el montar el dispositivo en alguna carpeta.
```

Y lo podemos usar como una carpeta normal

```bash
mkdir /mnt/memoria
mount /dev/ram0 -t ext2 /mnt/memoria
cd /mnt/memoria
ls -l
lost+found
```