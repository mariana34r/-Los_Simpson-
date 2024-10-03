# Proyecto base datos los simpson

## Tabla de contenido
| Indice | Título  |
|--|--|
| 1. | [Descripción_del_proyecto](#Descripcion) |
| 2. | [Estructura_de_la_Base_de_Datos](#Funcionalidades) |
| 3. | [Diagrama_de_Relaciones](#Captura_de_pantalla) |
| 4. | [Requerimientos](#Tenologia_Usada) |
| 5. | [Autores](#Autores) |

# Descripción del Proyecto
SerieDB es una base de datos diseñada para almacenar información relacionada con una serie de televisión. 
Esta base de datos incluye sobre personajes, episodios, familias, objetos, lugares, eventos, temporadas, canciones, mascotas y vehículos. 

# Estructura de la Base de Datos
La base de datos consta de las siguientes tablas:
## 1. Personajes
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
edad: INT.
genero: ENUM('Masculino', 'Femenino', 'Otro').
ocupacion: VARCHAR(100).
familia_id: INT, clave foránea que referencia a Familias(id).
objeto_id: INT, clave foránea que referencia a Objetos(id).

![image](https://github.com/user-attachments/assets/9bade86d-efa5-4ff2-b9f6-4d48cb2e248b)


## 2. Episodios
id: INT, clave primaria, auto-incremental.
titulo: VARCHAR(100), no nulo.
temporada_id: INT, clave foránea que referencia a Temporadas(id).
sinopsis: TEXT.

## 3. Familias
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
miembros: INT.
direccion: VARCHAR(255).

## 4. Lugares
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
tipo: VARCHAR(50).
direccion: VARCHAR(255).
descripcion: TEXT.

## 5. Objetos
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
descripcion: TEXT.
propietario_id: INT, clave foránea que referencia a Personajes(id).
uso: TEXT.

## 6. Eventos
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
descripcion: TEXT.

## 7. Temporadas
id: INT, clave primaria, auto-incremental.
numero_temporada: INT, no nulo.
numero_episodio: INT, no nulo.
fecha_inicio: DATE.
fecha_fin: DATE.

## 8. Canciones
id: INT, clave primaria, auto-incremental.
titulo: VARCHAR(100), no nulo.
artista: VARCHAR(100).
episodio_id: INT, clave foránea que referencia a Episodios(id).

## 9. Mascotas
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
tipo: VARCHAR(50).
personaje_id: INT, clave foránea que referencia a Personajes(id).

## 10. Vehículos
id: INT, clave primaria, auto-incremental.
nombre: VARCHAR(100), no nulo.
tipo: VARCHAR(50).
color: VARCHAR(30).
propietario_id: INT, clave foránea que referencia a Personajes(id).

# Requerimientos:

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

# Diagrama de Relaciones


#### Familias (1) --------- (N) Personajes
#### Personajes (1) --------- (N) Mascotas
#### Personajes (1) --------- (N) Vehículos
#### Personajes (1) --------- (1) Objetos
#### Temporadas (1) --------- (N) Episodios
#### Episodios (1) --------- (N) Canciones
