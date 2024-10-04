# Proyecto base datos los simpson

## Tabla de contenido
| Indice | Título  |
|--|--|
| 1. | [Descripción_del_proyecto](#Descripción_del_proyecto) |
| 2. | [Estructura_de_la_Base_de_Datos](#Estructura_de_la_Base_de_Datos) |
| 3. | [Diagrama_de_Relaciones](#Diagrama_de_Relaciones) |
| 4. | [Requerimientos](#Requerimientos) |
| 5. | [Consultas](#Consultas) |
| 6. | [Autores](#Autores) |
 
# Descripción del Proyecto
Esta base de datos sobre los simpson incluye sobre personajes, episodios, familias, objetos, lugares, eventos, temporadas, canciones, mascotas y vehículos.

# Imagen de la base de datos los simpson:

![image](https://github.com/user-attachments/assets/2b432548-f7e2-4655-9f96-7e5859745244)

# Estructura de la Base de Datos
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

