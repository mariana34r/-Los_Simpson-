# Proyecto base datos los simpson 🍩

## Tabla de contenido 
| Indice | Título  |
|--|--|
| 1. | [Descripción_del_proyecto](#Descripción_del_proyecto) |
| 2. | [Estructura_de_la_Base_de_Datos](#Estructura_de_la_Base_de_Datos) |
| 3. | [Diagrama_de_Relaciones](#Diagrama_de_Relaciones) |
| 4. | [Requerimientos](#Requerimientos) |
| 5. | [Consultas](#Consultas) |
| 6. | [Autores](#Autores) |
 
# Descripción del Proyecto 🚀
Esta base de datos sobre los simpson incluye sobre personajes, episodios, familias, objetos, lugares, eventos, temporadas, canciones, mascotas y vehículos.

# Imagen de la base de datos los simpson 🏠:

![image](https://github.com/user-attachments/assets/2b432548-f7e2-4655-9f96-7e5859745244)

# Estructura de la Base de Datos 📺:
La base de datos consta de las siguientes tablas:
## 1.Personajes
Descripción: Almacena información sobre los personajes de Los Simpson.

![image](https://github.com/user-attachments/assets/9bade86d-efa5-4ff2-b9f6-4d48cb2e248b)

### Columnas:

| Columna      | Tipo                                 | Descripción                                              |
|--------------|--------------------------------------|----------------------------------------------------------|
| `id`         | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del personaje.                       |
| `nombre`     | VARCHAR(50), NOT NULL                | Nombre del personaje.                                   |
| `edad`       | INT                                  | Edad del personaje.                                     |
| `genero`     | VARCHAR(10), NOT NULL                | Género del personaje.                                   |
| `ocupacion`  | VARCHAR(50)                          | Ocupación del personaje.                                |
| `familia_id` | INT                                  | Referencia a la familia a la que pertenece el personaje (FOREIGN KEY). |



## 2.Episodios
Descripción: Almacena información sobre los episodios de cada temporada.

![image](https://github.com/user-attachments/assets/aabcaf08-1e0f-4f83-b483-ea89a7599341)

### Columnas:

| Columna        | Tipo                                 | Descripción                                                  |
|----------------|--------------------------------------|--------------------------------------------------------------|
| `id`           | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del episodio.                            |
| `titulo`       | VARCHAR(100), NOT NULL               | Título del episodio.                                        |
| `sinopsis`     | TEXT, NOT NULL                       | Sinopsis del episodio.                                      |
| `temporadas_id`| INT                                  | Referencia a la temporada a la que pertenece el episodio (FOREIGN KEY). |


## 3.Familias
Descripción: Almacena información sobre las familias en el universo de Los Simpson.

![image](https://github.com/user-attachments/assets/8390023d-0b99-4b1f-8051-bc40715bd368)

### Columnas:


| Columna  | Tipo                                 | Descripción                                                  |
|----------|--------------------------------------|--------------------------------------------------------------|
| `id`     | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de la familia.                          |
| `nombre` | VARCHAR(50), NOT NULL                | Nombre de la familia.                                       |
| `direccion` | VARCHAR(100), NOT NULL            | Dirección donde vive la familia.                            |



## 4. Lugares
Descripción: Almacena información sobre los lugares que aparecen en la serie.

![image](https://github.com/user-attachments/assets/553005ca-70be-4bd4-9c31-f2b8e3ca55f1)

### Columnas:


| Columna     | Tipo                                 | Descripción                                                  |
|-------------|--------------------------------------|--------------------------------------------------------------|
| `id`        | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del lugar.                               |
| `nombre`    | VARCHAR(50), NOT NULL                | Nombre del lugar.                                           |
| `tipo`      | VARCHAR(20), NOT NULL                | Tipo de lugar (ej. escuela, tienda).                       |
| `direccion` | VARCHAR(100), NOT NULL               | Dirección del lugar.                                       |
| `descripcion` | TEXT, NOT NULL                     | Descripción del lugar.                                     |




## 5. Objetos
Descripción: Almacena información sobre los objetos que aparecen en Los Simpson.

![image](https://github.com/user-attachments/assets/5c7bc887-a79f-4b8a-865a-804e327bb113)

### Columnas:

| Columna      | Tipo                                 | Descripción                                                  |
|--------------|--------------------------------------|--------------------------------------------------------------|
| `id`         | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del objeto.                              |
| `nombre`     | VARCHAR(50), NOT NULL                | Nombre del objeto.                                          |
| `descripcion`| TEXT, NOT NULL                       | Descripción del objeto.                                     |
| `color`      | VARCHAR(20), NOT NULL                | Color del objeto.                                          |
| `uso`        | VARCHAR(50), NOT NULL                | Uso del objeto.                                            |





## 6. Eventos
Descripción: Almacena información sobre eventos significativos en la serie.

![image](https://github.com/user-attachments/assets/c2933368-f243-4f6c-9033-9a81b15ca23c)

### Columnas:

| Columna      | Tipo                                 | Descripción                                                  |
|--------------|--------------------------------------|--------------------------------------------------------------|
| `id`         | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del evento.                              |
| `nombre`     | VARCHAR(50), NOT NULL                | Nombre del evento.                                          |
| `descripcion`| TEXT, NOT NULL                       | Descripción del evento.                                     |





## 7. Temporadas
Descripción: Almacena información sobre las temporadas de Los Simpson.

![image](https://github.com/user-attachments/assets/4338655b-74c6-4bea-8b83-f86a45e80a76)

### Columnas:

| Columna        | Tipo                                 | Descripción                                                  |
|----------------|--------------------------------------|--------------------------------------------------------------|
| `id`           | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de la temporada.                        |
| `titulo`       | VARCHAR(100), NOT NULL               | Título de la temporada.                                     |
| `fecha_inicio` | DATE                                 | Fecha de inicio de la temporada.                            |
| `fecha_fin`    | DATE                                 | Fecha de fin de la temporada.                               |



## 8. Canciones
Descripción: Almacena información sobre las canciones que aparecen en la serie.

![image](https://github.com/user-attachments/assets/164f1008-ee75-4be1-b35e-10bcefffada6)

### Columnas:

| Columna      | Tipo                                 | Descripción                                                  |
|--------------|--------------------------------------|--------------------------------------------------------------|
| `id`         | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de la canción.                           |
| `titulo`     | VARCHAR(100), NOT NULL               | Título de la canción.                                       |
| `artista`    | VARCHAR(50), NOT NULL                | Artista de la canción.                                      |





## 9. Mascotas
Descripción: Almacena información sobre las mascotas de los personajes.

![image](https://github.com/user-attachments/assets/3c5b9b9e-d136-4bbf-a6d6-6b542374d025)

### Columnas:

| Columna       | Tipo                                 | Descripción                                                  |
|---------------|--------------------------------------|--------------------------------------------------------------|
| `id`          | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único de la mascota.                          |
| `nombre`      | VARCHAR(50), NOT NULL                | Nombre de la mascota.                                       |
| `tipo`        | VARCHAR(20), NOT NULL                | Tipo de mascota (ej. perro, gato).                         |
| `color`       | VARCHAR(20), NOT NULL                | Color de la mascota.                                       |
| `personajes_id` | INT                                | Referencia al personaje que posee la mascota (FOREIGN KEY). |



## 10. Vehículos
Descripción: Almacena información sobre los vehículos de los personajes.

![image](https://github.com/user-attachments/assets/6466962d-a943-4222-8474-8876aca5afe3)

### Columnas:

### Vehículos

| Columna        | Tipo                                 | Descripción                                                  |
|----------------|--------------------------------------|--------------------------------------------------------------|
| `id`           | INT, AUTO_INCREMENT, PRIMARY KEY     | Identificador único del vehículo.                            |
| `nombre`       | VARCHAR(50), NOT NULL                | Nombre del vehículo.                                        |
| `tipo`         | VARCHAR(20), NOT NULL                | Tipo de vehículo (ej. coche, bicicleta).                   |
| `color`        | VARCHAR(20), NOT NULL                | Color del vehículo.                                        |
| `personajes_id`| INT                                  | Referencia al personaje que posee el vehículo (FOREIGN KEY). |


## 11.Personajes_Objetos
Descripción: Relaciona personajes con objetos que utilizan o poseen.

![image](https://github.com/user-attachments/assets/549d63a7-0082-44b6-8c0a-34d8e8cc68ba)

### Columnas:

| Columna        | Tipo                                 | Descripción                                                  |
|----------------|--------------------------------------|--------------------------------------------------------------|
| `personajes_id`| INT                                  | Referencia al personaje (FOREIGN KEY).                      |
| `objetos_id`   | INT                                  | Referencia al objeto (FOREIGN KEY).                         |


### 12.Familias_Eventos
Descripción: Relaciona familias con eventos en los que participan.

![image](https://github.com/user-attachments/assets/4fd0498a-e0b8-4604-8097-b9857c7f61e6)

### Columnas:


| Columna       | Tipo                                 | Descripción                                                  |
|---------------|--------------------------------------|--------------------------------------------------------------|
| `familias_id` | INT                                  | Referencia a la familia (FOREIGN KEY).                      |
| `eventos_id`  | INT                                  | Referencia al evento (FOREIGN KEY).                         |


### 13.Eventos_Lugares
Descripción: Relaciona eventos con los lugares donde ocurren.

![image](https://github.com/user-attachments/assets/3b33ffc5-aca5-4ed8-97d2-1e4a25bd5737)

### Columnas:


| Columna       | Tipo                                 | Descripción                                                  |
|---------------|--------------------------------------|--------------------------------------------------------------|
| `lugares_id`  | INT                                  | Referencia al lugar (FOREIGN KEY).                          |
| `eventos_id`  | INT                                  | Referencia al evento (FOREIGN KEY).                         |


### 14.Episodios_Eventos
Descripción: Relaciona episodios con eventos que suceden en ellos.

![image](https://github.com/user-attachments/assets/ba79b9a4-22e5-47f1-b8fe-1aba42da9250)

### Columnas:

| Columna       | Tipo                                 | Descripción                                                  |
|---------------|--------------------------------------|--------------------------------------------------------------|
| `episodios_id`| INT                                  | Referencia al episodio (FOREIGN KEY).                       |
| `eventos_id`  | INT                                  | Referencia al evento (FOREIGN KEY).                         |


### 15.Episodios_Canciones
Descripción: Relaciona episodios con canciones que aparecen en ellos.

![image](https://github.com/user-attachments/assets/49e681cf-8d11-4885-b148-7e309d847a0f)

### Columnas:

| Columna       | Tipo                                 | Descripción                                                  |
|---------------|--------------------------------------|--------------------------------------------------------------|
| `episodios_id`| INT                                  | Referencia al episodio (FOREIGN KEY).                       |
| `canciones_id`| INT                                  | Referencia a la canción (FOREIGN KEY).                      |



# Requerimientos 🛋️:

## Personajes:
Personajes va a tener un nombre, edad, género, ocupación=puede ser nulo , un personaje puede un objeto (n a 1) , un personaje puede pertenecer a una familia (n a 1) un personaje puede participar en múltiples eventos(N a 1)

## Episodios:
Episodios debe tener un título, una temporada ,sinopsis , un episodio puede pertenecer a una temporada, (N a 1) un episodio puede tener múltiples canciones (1 a N) un episodio puede tener muchos eventos (1 a N)

## Familias:
Familias va a tener un nombre , miembros , Dirección , una familia puede tener múltiples personajes (1 a N) una familia puede participar en múltiples eventos (1 a N)

## Lugares:
Lugares va a tener un nombre tipo (casa, trabajo,etc) dirección , descripción un lugar puede apàrecer en múltiples episodios (1 a N)

## Objetos:
Objetos va a tener un nombre descripción=puede ser nulo , un propietario y un uso=puede ser nulo un objeto  puede tener un único propietario(N a 1)

## Eventos:
Eventos debe tener un nombre una descripción personajes involucrados un evento puede involucrar múltiples personajes (N a N) un evento puede ser mencionado en múltiples episodios (N a N)

## Temporadas:
Temporadas debe tener un numero de temporadas , un número de episodio fecha de inicio y fecha de fin las temporadas puede tener múltiples episodios(1 a N)

## Canciones:
Canciones debe tener titulo , artista , episodio , la música pertenece a muchos episodio (N a 1)

## Mascotas:
Mascotas debe tener nombre,tipo de mascota , personaje , mascota puede tener varios dueños ,(N a 1) un personaje puede tener múltiples mascotas(1 a N)

## Vehículos:
Vehículos debe tener nombre (marca/modelo), Tipo (coche , motocicleta,etc) color propietario , Vehículos debe tener un propietario que es un personaje(N a 1) un personaje puede tener multiples vehiculos (1 a N)

# Diagrama de Relaciones 🍺:

| Entidad A           | Relación            | Entidad B             |
|---------------------|---------------------|------------------------|
| Familias            | 1 a N               | Personajes             |
| Personajes          | N a 1               | Familias               |
| Personajes          | N a N               | Objetos                |
| Objetos             | N a N               | Personajes             |
| Personajes          | 1 a N               | Vehiculos              |
| Vehiculos           | N a 1               | Personajes             |
| Personajes          | 1 a N               | Mascotas               |
| Mascotas            | N a 1               | Personajes             |
| Familias            | N a N               | Eventos                |
| Eventos             | N a N               | Familias               |
| Lugares             | N a N               | Eventos                |
| Eventos             | N a N               | Lugares                |
| Temporadas          | 1 a N               | Episodios              |
| Episodios           | N a 1               | Temporadas             |
| Episodios           | N a N               | Eventos                |
| Eventos             | N a N               | Episodios              |
| Episodios           | N a N               | Canciones              |
| Canciones           | N a N               | Episodios              |

## Consultas 🎉:
1. **Obtener todos los personajes**:
   Recupera todos los registros de la tabla `Personajes`, mostrando toda la información disponible sobre cada personaje.
   ```sql
   SELECT * FROM Personajes;
   
2. **Contar cuántos eventos tienen la palabra 'Día' en su nombre**:
   Cuenta la cantidad de eventos cuyos nombres contienen la palabra "Día".

SELECT COUNT(*) FROM Eventos WHERE nombre LIKE '%Día%';

3. **Obtener los títulos de las temporadas que comenzaron después del año 2000**:
   Recupera los títulos de las temporadas que tienen una fecha de inicio posterior al 1 de enero de 2000.

SELECT titulo FROM Temporadas WHERE fecha_inicio > '2000-01-01';

4. **Listar todas las familias que viven en 'Evergreen Terrace'**:
   Muestra los nombres de las familias que tienen una dirección que incluye "Evergreen Terrace".

SELECT nombre FROM Familias WHERE direccion LIKE '%Evergreen Terrace%';

5. **Obtener los nombres y edades de los personajes que tienen menos de 18 años**:
   Selecciona los nombres y edades de los personajes que son menores de 18 años.

SELECT nombre, edad FROM Personajes WHERE edad < 18;

6. **Mostrar todos los objetos de color 'Negro'**:
   Recupera todos los objetos que tienen el color negro.

SELECT nombre FROM Objetos WHERE color = 'Negro';

7. **Mostrar todos los vehículos tipo 'Sedán'**:
   Muestra todos los vehículos que son del tipo 'Sedán'.

SELECT nombre FROM Vehiculos WHERE tipo = 'Sedán';

8. **Obtener el nombre y color de las mascotas que son gatos**:
   Selecciona el nombre y color de las mascotas que son clasificadas como gatos.

SELECT nombre, color FROM Mascotas WHERE tipo = 'Gato';


9. **Listar los episodios que pertenecen a la temporada 1**:
   Obtiene los títulos de todos los episodios que pertenecen a la temporada con ID 1.

SELECT titulo FROM Episodios WHERE temporadas_id = 1;

10. **Contar cuántos personajes hay en la familia 'Los Simpson'**:
    Cuenta el número de personajes que pertenecen a la familia 'Los Simpson'.

SELECT COUNT(*) FROM Personajes WHERE familia_id = 1;

11. **Obtener los personajes que tienen más de 40 años y son hombres**:
    Muestra los nombres de los personajes que son hombres y tienen más de 40 años.

SELECT nombre FROM Personajes WHERE edad > 40 AND genero = 'Masculino';

12. **Listar los nombres de personajes y los nombres de sus vehículos**:
    Une las tablas `Personajes` y `Vehiculos` para mostrar el nombre de cada personaje junto con el nombre de su vehículo.

SELECT Personajes.nombre, Vehiculos.nombre 
FROM Personajes 
JOIN Vehiculos ON Personajes.id = Vehiculos.personajes_id;

13. **Obtener la cantidad de personajes que tienen mascotas**:
    Cuenta cuántos personajes tienen al menos una mascota.

SELECT COUNT(DISTINCT personajes_id) FROM Mascotas;

14. **Listar los nombres de las familias que han participado en más de 3 eventos**:
    Muestra los nombres de las familias que han participado en más de tres eventos.

SELECT Familias.nombre 
FROM Familias 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
GROUP BY Familias.nombre 
HAVING COUNT(Familias_Eventos.eventos_id) > 3;


15. **Obtener los nombres de personajes y el número de objetos que poseen**:
    Lista los nombres de los personajes junto con el número de objetos que poseen.

SELECT Personajes.nombre, COUNT(Personajes_Objetos.objetos_id) AS num_objetos 
FROM Personajes 
JOIN Personajes_Objetos ON Personajes.id = Personajes_Objetos.personajes_id 
GROUP BY Personajes.nombre;

16. **Listar los nombres de los episodios donde la palabra 'Bart' aparece en la sinopsis**:
    Recupera los títulos de episodios cuya sinopsis contiene la palabra "Bart".

SELECT titulo FROM Episodios WHERE sinopsis LIKE '%Bart%';

17. **Obtener los nombres de personajes que tienen un vehículo de color 'Rojo'**:
    Muestra los nombres de los personajes que poseen un vehículo rojo.

SELECT Personajes.nombre 
FROM Personajes 
JOIN Vehiculos ON Personajes.id = Vehiculos.personajes_id 
WHERE Vehiculos.color = 'Rojo';

18. **Obtener los nombres de los objetos que tienen un uso relacionado con 'Trabajo'**:
    Recupera los nombres de los objetos cuya utilidad está relacionada con "Trabajo".

SELECT nombre FROM Objetos WHERE uso = 'Trabajo';

19. **Listar los nombres de personajes y el nombre de su familia**:
    Muestra el nombre de cada personaje junto con el nombre de su familia.

SELECT Personajes.nombre, Familias.nombre AS familia 
FROM Personajes 
JOIN Familias ON Personajes.familia_id = Familias.id;

20. **Listar los nombres de las familias y el número de eventos en los que han participado**:
    Muestra los nombres de las familias y cuántos eventos han participado.

SELECT Familias.nombre, COUNT(Familias_Eventos.eventos_id) AS num_eventos 
FROM Familias 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
GROUP BY Familias.nombre;

21. **Listar los personajes que tienen al menos 3 objetos**:
    Muestra los nombres de los personajes que tienen tres o más objetos.

SELECT Personajes.nombre 
FROM Personajes 
JOIN Personajes_Objetos ON Personajes.id = Personajes_Objetos.personajes_id 
GROUP BY Personajes.nombre 
HAVING COUNT(Personajes_Objetos.objetos_id) >= 3;

22. **Obtener los personajes que no tienen ningún vehículo**:
    Recupera los nombres de los personajes que no poseen vehículos.

SELECT nombre 
FROM Personajes 
WHERE id NOT IN (SELECT personajes_id FROM Vehiculos);

23. **Obtener el promedio de edad de los personajes de cada familia**:
    Muestra el promedio de edad de los personajes en cada familia.

SELECT Familias.nombre, AVG(Personajes.edad) AS edad_promedio 
FROM Familias 
JOIN Personajes ON Familias.id = Personajes.familia_id 
GROUP BY Familias.nombre;

24. **Obtener los nombres de los personajes y las mascotas que tienen el mismo color**:
    Busca personajes cuyos nombres coinciden con el color de sus mascotas.

SELECT Personajes.nombre, Mascotas.nombre AS mascota 
FROM Personajes 
JOIN Mascotas ON Personajes.id = Mascotas.personajes_id 
WHERE Personajes.nombre IN (SELECT nombre FROM Mascotas WHERE color = Mascotas.color);

25. **Obtener el nombre del evento en el que la familia 'Los Flanders' participó y que ocurrió en 'Moe's Tavern'**:
    Muestra el nombre de un evento específico en el que la familia 'Los Flanders' participó en 'Moe's Tavern'.
    

SELECT Eventos.nombre 
FROM Familias 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
JOIN Eventos ON Familias_Eventos.eventos_id = Eventos.id 
JOIN Eventos_Lugares ON Eventos.id = Eventos_Lugares.eventos_id 
JOIN Lugares ON Eventos_Lugares.lugares_id = Lugares.id 
WHERE Familias.nombre = 'Los Flanders' AND Lugares.nombre = 'Moe\'s Tavern';

26. **Obtener las familias que tienen personajes con más de 2 vehículos y además han asistido a un evento**:
    Muestra las familias cuyos personajes tienen más de dos vehículos y que han asistido a al menos un evento.

SELECT Familias.nombre 
FROM Familias 
JOIN Personajes ON Familias.id = Personajes.familia_id 
JOIN Vehiculos ON Personajes.id = Vehiculos.personajes_id 
JOIN Familias_Eventos ON Familias.id = Familias_Eventos.familias_id 
GROUP BY Familias.nombre 
HAVING COUNT(Vehiculos.id) > 2;

27. **Obtener el nombre del personaje más joven de cada familia**:
    Selecciona el personaje más joven de cada familia.

SELECT nombre 
FROM Personajes P1 
WHERE edad = (SELECT MIN(edad) FROM Personajes P2 WHERE P1.familia_id = P2.familia_id);


28. **Obtener la dirección y el número de eventos en los que participaron todas las familias que tienen más de un evento en el mismo lugar**:
    Muestra las direcciones de los lugares donde más de una familia ha participado en eventos.

SELECT Lugares.direccion, COUNT(Eventos.id) AS num_eventos 
FROM Eventos 
JOIN Eventos_Lugares ON Eventos.id = Eventos_Lugares.eventos_id 
JOIN Lugares ON Eventos_Lugares.lugares_id = Lugares.id 
GROUP BY Lugares.direccion 
HAVING num_eventos > 1;

29. **Obtener todos los personajes y sus familias, ordenados por el nombre de la familia**:
    Lista todos los personajes junto con sus familias, ordenados alfabéticamente por el nombre de la familia.

SELECT p.nombre AS personaje, f.nombre AS familia
FROM Personajes p
JOIN Familias f ON p.familia_id = f.id
ORDER BY f.nombre;

30. **Contar cuántos objetos tiene cada personaje**:
    Cuenta la cantidad de objetos que posee cada personaje.

SELECT p.nombre AS personaje, COUNT(po.objetos_id) AS total_objetos
FROM Personajes p
LEFT JOIN Personajes_Objetos po ON p.id = po.personajes_id
GROUP BY p.nombre;

31. **Listar todas las mascotas y los personajes que las poseen**:
    Muestra las mascotas y los nombres de los personajes que las poseen.
    
SELECT m.nombre AS mascota, p.nombre AS personaje
FROM Mascotas m
JOIN Personajes p ON m.personajes_id = p.id;

32. **Obtener los eventos en los que participa la familia "Los Simpson"**:
    Muestra los eventos en los que la familia "Los Simpson" está involucrada.

SELECT e.nombre AS evento
FROM Eventos e
JOIN Familias_Eventos fe ON e.id = fe.eventos_id
JOIN Familias f ON fe.familias_id = f.id
WHERE f.nombre = 'Los Simpson';

33. **Contar cuántas familias participan en cada evento**:
    Cuenta cuántas familias han participado en cada evento.

SELECT e.nombre AS evento, COUNT(fe.familias_id) AS total_familias
FROM Eventos e
LEFT JOIN Familias_Eventos fe ON e.id = fe.eventos_id
GROUP BY e.nombre;

34. **Obtener la descripción de todos los lugares donde se celebran eventos**:
    Muestra los nombres y descripciones de todos los lugares donde se realizan eventos.

SELECT l.nombre AS lugar, l.descripcion
FROM Lugares l
JOIN Eventos_Lugares el ON l.id = el.lugares_id;

35. **Listar personajes junto con los vehículos que poseen, si tienen alguno**:
    Muestra los nombres de los personajes junto con el nombre de su vehículo, si tienen alguno.

SELECT p.nombre AS personaje, v.nombre AS vehiculo
FROM Personajes p
LEFT JOIN Vehiculos v ON p.id = v.personajes_id;

36. **Encontrar la temporada en la que se emitió el episodio "Bart Gets an F"**:
    Recupera la temporada correspondiente al episodio titulado "Bart Gets an F".

SELECT t.titulo AS temporada
FROM Temporadas t
JOIN Episodios e ON t.id = e.temporadas_id
WHERE e.titulo = 'Bart Gets an F';

37. **Contar el número de episodios en cada temporada**:
    Cuenta cuántos episodios hay en cada temporada.

SELECT t.titulo AS temporada, COUNT(e.id) AS total_episodios
FROM Temporadas t
LEFT JOIN Episodios e ON t.id = e.temporadas_id
GROUP BY t.titulo;

38. **Obtener el total de vehículos por personaje, ordenado de mayor a menor**:
    Lista el total de vehículos que posee cada personaje, ordenados de mayor a menor cantidad.

SELECT p.nombre AS personaje, COUNT(v.id) AS total_vehiculos
FROM Personajes p
LEFT JOIN Vehiculos v ON p.id = v.personajes_id
GROUP BY p.nombre
ORDER BY total_vehiculos DESC;

39. **Listar las familias junto con los eventos que celebran, si tienen alguno**:
    Muestra las familias y los eventos que han celebrado, si han participado en alguno.

SELECT f.nombre AS familia, e.nombre AS evento
FROM Familias f
LEFT JOIN Familias_Eventos fe ON f.id = fe.familias_id
LEFT JOIN Eventos e ON fe.eventos_id = e.id;

40. **Encontrar el personaje más viejo de cada familia**:
    Selecciona el personaje más viejo de cada familia.

SELECT f.nombre AS familia, MAX(p.edad) AS edad_maxima
FROM Familias f
JOIN Personajes p ON f.id = p.familia_id
GROUP BY f.nombre;

41. **Obtener la lista de objetos y la cantidad de personajes que los poseen**:
    Muestra los objetos y cuántos personajes tienen cada uno de ellos.

SELECT o.nombre AS objeto, COUNT(po.personajes_id) AS total_personajes
FROM Objetos o
LEFT JOIN Personajes_Objetos po ON o.id = po.objetos_id
GROUP BY o.nombre;

-42. **Listar los personajes y sus mascotas, mostrando 'Ninguna' si no tienen**:
    Muestra los personajes y sus mascotas, mostrando "Ninguna" si no tienen mascota.

SELECT p.nombre AS personaje, COALESCE(m.nombre, 'Ninguna') AS mascota
FROM Personajes p
LEFT JOIN Mascotas m ON p.id = m.personajes_id;

43. **Contar cuántos eventos se han celebrado en cada lugar**:
    Cuenta la cantidad de eventos que se han celebrado en cada lugar.

SELECT l.nombre AS lugar, COUNT(el.eventos_id) AS total_eventos
FROM Lugares l
LEFT JOIN Eventos_Lugares el ON l.id = el.lugares_id
GROUP BY l.nombre;

44. **Obtener los nombres de todos los personajes que tienen un coche**:
    Muestra los nombres de los personajes que poseen al menos un coche.

SELECT DISTINCT p.nombre AS personaje
FROM Personajes p
JOIN Vehiculos v ON p.id = v.personajes_id;

45. **Listar los episodios que pertenecen a la primera temporada**:
    Obtiene los títulos de los episodios de la primera temporada.

SELECT e.titulo AS episodio
FROM Episodios e
JOIN Temporadas t ON e.temporadas_id = t.id
WHERE t.titulo = 'Temporada 1';

46. **Obtener la lista de familias y la cantidad de personajes en cada familia**:
    Muestra las familias y cuántos personajes tiene cada una.

SELECT f.nombre AS familia, COUNT(p.id) AS total_personajes
FROM Familias f
LEFT JOIN Personajes p ON f.id = p.familia_id
GROUP BY f.nombre;


47. **Listar los lugares donde se han realizado eventos relacionados con "Navidad"**:
    Muestra los lugares donde se han realizado eventos relacionados con "Navidad".

SELECT l.nombre AS lugar
FROM Lugares l
JOIN Eventos_Lugares el ON l.id = el.lugares_id
JOIN Eventos e ON el.eventos_id = e.id
WHERE e.nombre = 'Navidad';

48. **Contar la cantidad de objetos que tiene cada familia a través de sus personajes**:
    Muestra la cantidad total de objetos que posee cada familia a través de sus personajes.

SELECT f.nombre AS familia, COUNT(po.objetos_id) AS total_objetos
FROM Familias f
JOIN Personajes p ON f.id = p.familia_id
LEFT JOIN Personajes_Objetos po ON p.id = po.personajes_id
GROUP BY f.nombre;

49. **Obtener el evento más reciente**:
    Recupera el nombre y descripción del evento más reciente.

SELECT nombre, descripcion
FROM Eventos
ORDER BY id DESC
LIMIT 1;

50. **Contar cuántas temporadas tiene cada personaje basado en los episodios en los que aparece**:
    Cuenta cuántas temporadas ha aparecido cada personaje en los episodios.

SELECT p.nombre AS personaje, COUNT(DISTINCT t.id) AS total_temporadas
FROM Personajes p
JOIN Episodios e ON p.id = e.temporadas_id
JOIN Temporadas t ON e.temporadas_id = t.id
GROUP BY p.nombre;

51. **Listar los eventos que se celebran en la escuela**:
    Muestra los eventos que tienen lugar en la escuela.

SELECT e.nombre AS evento
FROM Eventos e
JOIN Eventos_Lugares el ON e.id = el.eventos_id
JOIN Lugares l ON el.lugares_id = l.id
WHERE l.tipo = 'Escuela';

52. **Obtener el promedio de edad de los personajes de cada familia**:
    Muestra el promedio de edad de los personajes en cada familia (repetida).

SELECT f.nombre AS familia, AVG(p.edad) AS promedio_edad
FROM Familias f
JOIN Personajes p ON f.id = p.familia_id
GROUP BY f.nombre;

53. **Listar todos los objetos que tienen los personajes y sus respectivos colores**:
    Muestra los nombres de los personajes, los objetos que poseen y sus respectivos colores.

SELECT p.nombre AS personaje, o.nombre AS objeto, o.color
FROM Personajes p
JOIN Personajes_Objetos po ON p.id = po.personajes_id
JOIN Objetos o ON po.objetos_id = o.id;


## Autores👤:

-[Mariana Rueda](https://github.com/mariana34r)
-[Ronaldo Oviedo](https://github.com/RonaldoOviedo19)
