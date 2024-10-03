USE TheSimpsons;

CREATE TABLE Familias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE Personajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    edad INT,
    genero VARCHAR(10) NOT NULL,
    ocupacion VARCHAR(50),
    familia_id INT,
    FOREIGN KEY (familia_id) REFERENCES Familias(id)
);

CREATE TABLE Objetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    color VARCHAR(20) NOT NULL,
    uso VARCHAR(50) NOT NULL
);

CREATE TABLE Personajes_Objetos (
    personajes_id INT,
    objetos_id INT,
    FOREIGN KEY (personajes_id) REFERENCES Personajes(id),
    FOREIGN KEY (objetos_id) REFERENCES Objetos(id)
);

CREATE TABLE Vehiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    personajes_id INT,
    FOREIGN KEY (personajes_id) REFERENCES Personajes(id)
);

CREATE TABLE Mascotas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    personajes_id INT,
    FOREIGN KEY (personajes_id) REFERENCES Personajes(id)
);

CREATE TABLE Eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL
);

CREATE TABLE Familias_Eventos (
	familias_id INT,
    eventos_id INT,
    FOREIGN KEY (eventos_id) REFERENCES Eventos(id),
    FOREIGN KEY (familias_id) REFERENCES Familias(id)
);

CREATE TABLE Lugares (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL
);

CREATE TABLE Eventos_Lugares (
	lugares_id INT,
    eventos_id INT,
    FOREIGN KEY (eventos_id) REFERENCES Eventos(id),
    FOREIGN KEY (lugares_id) REFERENCES Lugares(id)
);

CREATE TABLE Temporadas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE Episodios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    sinopsis TEXT NOT NULL,
    temporadas_id INT,
    FOREIGN KEY (temporadas_id) REFERENCES Temporadas(id)
);

CREATE TABLE Episodios_Eventos (
	episodios_id INT,
    eventos_id INT,
    FOREIGN KEY (eventos_id) REFERENCES Eventos(id),
    FOREIGN KEY (episodios_id) REFERENCES Episodios(id)
);

CREATE TABLE Canciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(50) NOT NULL
);

CREATE TABLE Episodios_Canciones (
	episodios_id INT,
    canciones_id INT,
    FOREIGN KEY (canciones_id) REFERENCES Canciones(id),
    FOREIGN KEY (episodios_id) REFERENCES Episodios(id)
);