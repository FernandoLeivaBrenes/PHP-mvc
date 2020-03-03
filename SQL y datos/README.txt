La BBDD correspondiente a ecorent_mvc.sql
contiene los datos que se adjuntan en sus respectivas
tablas y bien formados.

Los datos de la tabla prestamos deben modificarse al
añadirlos puesto que indican la fecha fin como:
'0000-00-00 00:00:00'

Sólo debe ejecutarse la siguiente orden:
UPDATE prestamo SET fecha_fin = NULL WHERE fecha_fin = '0000-00-00 00:00:00'

Los usuarios 1 , 2 y 25 tienen contraseñas accesibles
1  = umerrgen0@hibu.com = admin
2  = anyssens1@indiatimes.com = 12345
25 = lfishleigho@dot.gov = 1234

Todos los datos han sido creados desde Mockaroo
https://mockaroo.com/