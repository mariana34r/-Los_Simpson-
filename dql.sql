-- Obtener todos los personajes --

SELECT * FROM Personajes;

-- Contar cuántos eventos tienen la palabra 'Día' en su nombre --

SELECT COUNT(*) FROM Eventos WHERE nombre LIKE '%Día%';

-- Obtener los títulos de las temporadas que comenzaron después del año 2000 --

SELECT titulo FROM Temporadas WHERE fecha_inicio > '2000-01-01';

-- Listar todas las familias que viven en 'Evergreen Terrace' --

SELECT nombre FROM Familias WHERE direccion LIKE '%Evergreen Terrace%';

-- Obtener los nombres y edades de los personajes que tienen menos de 18 años --

SELECT nombre, edad FROM Personajes WHERE edad < 18;

-- Mostrar todos los objetos de color 'Negro' --

SELECT nombre FROM Objetos WHERE color = 'Negro';

-- Mostrar todos los vehículos tipo 'Sedán' --

SELECT nombre FROM Vehiculos WHERE tipo = 'Sedán';

-- Obtener el nombre y color de las mascotas que son gatos --

SELECT nombre, color FROM Mascotas WHERE tipo = 'Gato';

-- Listar los episodios que pertenecen a la temporada 1 --

SELECT titulo FROM Episodios WHERE temporadas_id = 1;

-- Contar cuántos personajes hay en la familia 'Los Simpson' --

SELECT COUNT(*) FROM Personajes WHERE familia_id = 1;
-- Obtener los personajes que tienen más de 40 años y son hombres --

SELECT nombre FROM Personajes WHERE edad > 40 AND genero = 'Masculino';

-- Listar los nombres de personajes y los nombres de sus vehículos --

SELECT Personajes.nombre, Vehiculos.nombre 
FROM Personajes 
JOIN Vehiculos ON Personajes.id = Vehiculos.personajes_id;

-- Obtener la cantidad de personajes que tienen mascotas --

SELECT COUNT(DISTINCT personajes_id) FROM Mascotas;

-- Listar los nombres de las familias que han participado en más de 3 eventos --

SELECT Familias.nombre 
FROM Familias 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
GROUP BY Familias.nombre 
HAVING COUNT(Familias_Eventos.eventos_id) > 3;

-- Obtener los nombres de personajes y el número de objetos que poseen --

SELECT Personajes.nombre, COUNT(Personajes_Objetos.objetos_id) AS num_objetos 
FROM Personajes 
JOIN Personajes_Objetos ON Personajes.id = Personajes_Objetos.personajes_id 
GROUP BY Personajes.nombre;

-- Listar los nombres de los episodios donde la palabra 'Bart' aparece en la sinopsis --

SELECT titulo FROM Episodios WHERE sinopsis LIKE '%Bart%';

-- Obtener los nombres de personajes que tienen un vehículo de color 'Rojo' --

SELECT Personajes.nombre 
FROM Personajes 
JOIN Vehiculos ON Personajes.id = Vehiculos.personajes_id 
WHERE Vehiculos.color = 'Rojo';

-- Obtener los nombres de los objetos que tienen un uso relacionado con 'Trabajo' --

SELECT nombre FROM Objetos WHERE uso = 'Trabajo';

-- Listar los nombres de personajes y el nombre de su familia --

SELECT Personajes.nombre, Familias.nombre AS familia 
FROM Personajes 
JOIN Familias ON Personajes.familia_id = Familias.id;

-- Listar los nombres de las familias y el número de eventos en los que han participado --

SELECT Familias.nombre, COUNT(Familias_Eventos.eventos_id) AS num_eventos 
FROM Familias 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
GROUP BY Familias.nombre;

-- Listar los personajes que tienen al menos 3 objetos --

SELECT Personajes.nombre 
FROM Personajes 
JOIN Personajes_Objetos ON Personajes.id = Personajes_Objetos.personajes_id 
GROUP BY Personajes.nombre 
HAVING COUNT(Personajes_Objetos.objetos_id) >= 3;

-- Obtener los personajes que no tienen ningún vehículo --

SELECT nombre 
FROM Personajes 
WHERE id NOT IN (SELECT personajes_id FROM Vehiculos);

-- Obtener el promedio de edad de los personajes de cada familia --

SELECT Familias.nombre, AVG(Personajes.edad) AS edad_promedio 
FROM Familias 
JOIN Personajes ON Familias.id = Personajes.familia_id 
GROUP BY Familias.nombre;

-- Obtener los nombres de los personajes y las mascotas que tienen el mismo color --

SELECT Personajes.nombre, Mascotas.nombre AS mascota 
FROM Personajes 
JOIN Mascotas ON Personajes.id = Mascotas.personajes_id 
WHERE Personajes.nombre IN (SELECT nombre FROM Mascotas WHERE color = Mascotas.color);

-- Obtener el nombre del evento en el que la familia 'Los Flanders' participó y que ocurrió en 'Moe's Tavern' --

SELECT Eventos.nombre 
FROM Familias 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
JOIN Eventos ON Familias_Eventos.eventos_id = Eventos.id 
JOIN Eventos_Lugares ON Eventos.id = Eventos_Lugares.eventos_id 
JOIN Lugares ON Eventos_Lugares.lugares_id = Lugares.id 
WHERE Familias.nombre = 'Los Flanders' AND Lugares.nombre = 'Moe\'s Tavern';

-- Obtener las familias que tienen personajes con más de 2 vehículos y además han asistido a un evento --

SELECT Familias.nombre 
FROM Familias 
JOIN Personajes ON Familias.id = Personajes.familia_id 
JOIN Vehiculos ON Personajes.id = Vehiculos.personajes_id 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
GROUP BY Familias.nombre 
HAVING COUNT(Vehiculos.id) > 2;

-- Obtener el nombre del personaje más joven de cada familia --

SELECT nombre 
FROM Personajes P1 
WHERE edad = (SELECT MIN(edad) FROM Personajes P2 WHERE P1.familia_id = P2.familia_id);

-- Obtener la dirección y el número de eventos en los que participaron todas las familias que tienen más de un evento en el mismo lugar --

SELECT Lugares.direccion, COUNT(Eventos.id) AS num_eventos 
FROM Eventos 
JOIN Eventos_Lugares ON Eventos.id = Eventos_Lugares.eventos_id 
JOIN Lugares ON Eventos_Lugares.lugares_id = Lugares.id 
GROUP BY Lugares.direccion 
HAVING num_eventos > 1;

-- Obtener todos los personajes y sus familias, ordenados por el nombre de la familia.

SELECT p.nombre AS personaje, f.nombre AS familia
FROM Personajes p
JOIN Familias f ON p.familia_id = f.id
ORDER BY f.nombre;

-- Contar cuántos objetos tiene cada personaje.

SELECT p.nombre AS personaje, COUNT(po.objetos_id) AS total_objetos
FROM Personajes p
LEFT JOIN Personajes_Objetos po ON p.id = po.personajes_id
GROUP BY p.nombre;

-- Listar todas las mascotas y los personajes que las poseen.
SELECT m.nombre AS mascota, p.nombre AS personaje
FROM Mascotas m
JOIN Personajes p ON m.personajes_id = p.id;

-- Obtener los eventos en los que participa la familia "Los Simpson".

SELECT e.nombre AS evento
FROM Eventos e
JOIN Familias_Eventos fe ON e.id = fe.eventos_id
JOIN Familias f ON fe.familias_id = f.id
WHERE f.nombre = 'Los Simpson';

-- Contar cuántas familias participan en cada evento.

SELECT e.nombre AS evento, COUNT(fe.familias_id) AS total_familias
FROM Eventos e
LEFT JOIN Familias_Eventos fe ON e.id = fe.eventos_id
GROUP BY e.nombre;

-- Obtener la descripción de todos los lugares donde se celebran eventos.

SELECT l.nombre AS lugar, l.descripcion
FROM Lugares l
JOIN Eventos_Lugares el ON l.id = el.lugares_id;

-- Listar personajes junto con los vehículos que poseen, si tienen alguno.

SELECT p.nombre AS personaje, v.nombre AS vehiculo
FROM Personajes p
LEFT JOIN Vehiculos v ON p.id = v.personajes_id;

-- Encontrar la temporada en la que se emitió el episodio "Bart Gets an F".

SELECT t.titulo AS temporada
FROM Temporadas t
JOIN Episodios e ON t.id = e.temporadas_id
WHERE e.titulo = 'Bart Gets an F';

-- Contar el número de episodios en cada temporada.

SELECT t.titulo AS temporada, COUNT(e.id) AS total_episodios
FROM Temporadas t
LEFT JOIN Episodios e ON t.id = e.temporadas_id
GROUP BY t.titulo;

-- Obtener el total de vehículos por personaje, ordenado de mayor a menor.

SELECT p.nombre AS personaje, COUNT(v.id) AS total_vehiculos
FROM Personajes p
LEFT JOIN Vehiculos v ON p.id = v.personajes_id
GROUP BY p.nombre
ORDER BY total_vehiculos DESC;

-- Listar las familias junto con los eventos que celebran, si tienen alguno.

SELECT f.nombre AS familia, e.nombre AS evento
FROM Familias f
LEFT JOIN Familias_Eventos fe ON f.id = fe.familias_id
LEFT JOIN Eventos e ON fe.eventos_id = e.id;

-- Encontrar el personaje más viejo de cada familia.

SELECT f.nombre AS familia, MAX(p.edad) AS edad_maxima
FROM Familias f
JOIN Personajes p ON f.id = p.familia_id
GROUP BY f.nombre;

-- Obtener la lista de objetos y la cantidad de personajes que los poseen.

SELECT o.nombre AS objeto, COUNT(po.personajes_id) AS total_personajes
FROM Objetos o
LEFT JOIN Personajes_Objetos po ON o.id = po.objetos_id
GROUP BY o.nombre;

-- Listar los personajes y sus mascotas, mostrando 'Ninguna' si no tienen.

SELECT p.nombre AS personaje, COALESCE(m.nombre, 'Ninguna') AS mascota
FROM Personajes p
LEFT JOIN Mascotas m ON p.id = m.personajes_id;

-- Contar cuántos eventos se han celebrado en cada lugar.

SELECT l.nombre AS lugar, COUNT(el.eventos_id) AS total_eventos
FROM Lugares l
LEFT JOIN Eventos_Lugares el ON l.id = el.lugares_id
GROUP BY l.nombre;

-- Obtener los nombres de todos los personajes que tienen un coche.

SELECT DISTINCT p.nombre AS personaje
FROM Personajes p
JOIN Vehiculos v ON p.id = v.personajes_id;

-- Listar los episodios que pertenecen a la primera temporada.

SELECT e.titulo AS episodio
FROM Episodios e
JOIN Temporadas t ON e.temporadas_id = t.id
WHERE t.titulo = 'Temporada 1';

-- Obtener la lista de familias y la cantidad de personajes en cada familia.

SELECT f.nombre AS familia, COUNT(p.id) AS total_personajes
FROM Familias f
LEFT JOIN Personajes p ON f.id = p.familia_id
GROUP BY f.nombre;

-- Listar los lugares donde se han realizado eventos relacionados con "Navidad".

SELECT l.nombre AS lugar
FROM Lugares l
JOIN Eventos_Lugares el ON l.id = el.lugares_id
JOIN Eventos e ON el.eventos_id = e.id
WHERE e.nombre = 'Navidad';

-- Contar la cantidad de objetos que tiene cada familia a través de sus personajes.

SELECT f.nombre AS familia, COUNT(po.objetos_id) AS total_objetos
FROM Familias f
JOIN Personajes p ON f.id = p.familia_id
LEFT JOIN Personajes_Objetos po ON p.id = po.personajes_id
GROUP BY f.nombre;

-- Obtener el evento más reciente.

SELECT nombre, descripcion
FROM Eventos
ORDER BY id DESC
LIMIT 1;

-- Contar cuántas temporadas tiene cada personaje basado en los episodios en los que aparece.

SELECT p.nombre AS personaje, COUNT(DISTINCT t.id) AS total_temporadas
FROM Personajes p
JOIN Episodios e ON p.id = e.temporadas_id
JOIN Temporadas t ON e.temporadas_id = t.id
GROUP BY p.nombre;

-- Listar los eventos que se celebran en la escuela.

SELECT e.nombre AS evento
FROM Eventos e
JOIN Eventos_Lugares el ON e.id = el.eventos_id
JOIN Lugares l ON el.lugares_id = l.id
WHERE l.tipo = 'Escuela';

-- Obtener el promedio de edad de los personajes de cada familia.

SELECT f.nombre AS familia, AVG(p.edad) AS promedio_edad
FROM Familias f
JOIN Personajes p ON f.id = p.familia_id
GROUP BY f.nombre;

-- Listar todos los objetos que tienen los personajes y sus respectivos colores.

SELECT p.nombre AS personaje, o.nombre AS objeto, o.color
FROM Personajes p
JOIN Personajes_Objetos po ON p.id = po.personajes_id
JOIN Objetos o ON po.objetos_id = o.id;
