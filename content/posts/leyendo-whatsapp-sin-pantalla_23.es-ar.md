---
title: 'Leyendo Whatsapp sin pantalla'
date: 2014-02-23T19:47:00.003+13:00
draft: false
tags : [tutorial, adb, comandos, whatsapp, hacking, Android]
---

Antes que nada, una foto de como quedo mi celular y así se entiende el porque de este post:  

[![](http://1.bp.blogspot.com/-UCuTstnnoJk/UwmViEEZY3I/AAAAAAAAWv8/9tqGGYQECOs/s1600/1743595_10203157795488509_822009600_n.jpg)](http://1.bp.blogspot.com/-UCuTstnnoJk/UwmViEEZY3I/AAAAAAAAWv8/9tqGGYQECOs/s1600/1743595_10203157795488509_822009600_n.jpg)

Motorola RAZR HD XT925 Screen Damage

Con el display y el digitalizador roto, necesitaba sacar info de algunos mensajes en Whatsapp... entonces hice lo siguiente...  
  
Requisitos :  
  

*   Tener el celular rooteado
*   Tener busybox instalado
*   Tener sqlite3 instalado

Pasos:

1.  Abrimos una terminal al celu

**adb** shell  
shell@xt925:/$su  
root@xt925:/#  

1.  Abrir la base de datos de whatsapp usando sqlite3

root@xt925:/#cd/data/data/com.whatsapp/databases

root@xt925:/#**sqlite3** msgstore.db  

2.  Seleccionar la tabla correspondiente y ver los mensajes ;)

1.  SQLite version 3.7.11 2012-03-20 11:35:50
    
2.  Enter ".help" FOR instructions
    
3.  Enter SQL statements TERMINATED WITH a ";"
    
4.  sqlite> .TABLES
    
5.  .TABLES
    
6.  chat_list  messages
    
7.  sqlite> SELECT * FROM messages
    
8.  1.  8694|549351x967xxx-4@g.us|0|xxxxx-9|0|0|Capaz q no llegue laa foto
        
    2.  |1393110408000|||0|0|||0|1|0.0|0.0||5493515xxxx@s.whatsapp.net|xxx|-
        
    3.  1|-1|-1||
        
    4.  8695|549351xxxxx-x@g.us|0|1393105736-5|0|0|Jajajaj ponete las pilas cristian|1393110434000|||0|0|||0|1|0.0|0.0||xxxx@s.whatsapp.net|xxx|-1|-1|-1||
        

  
Les sirvió?