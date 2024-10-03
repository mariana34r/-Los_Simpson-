INSERT INTO Familias (nombre, direccion) VALUES
('Los Simpson', '742 Evergreen Terrace'),
('Los Flanders', '744 Evergreen Terrace'),
('Los Krustofsky', '123 Krusty Burger Rd'),
('Los Bouvier', '456 Evergreen Terrace'),
('Los Van Houten', '789 Evergreen Terrace'),
('Los Lovejoy', '321 Evergreen Terrace'),
('Los Skinner', '654 Evergreen Terrace'),
('Los Wiggum', '987 Evergreen Terrace'),
('Los Scully', '159 Evergreen Terrace'),
('Los Burns', '1000 Burns Manor'),
('Los Hibbert', '2000 Hibbert St'),
('Los Simpson (temporada 2)', '742 Evergreen Terrace'),
('Los Moes', '900 Moe’s Tavern'),
('Los Apu', '322 Kwik-E-Mart'),
('Los Milhouse', '555 Evergreen Terrace'),
('Los Kearney', '666 Evergreen Terrace'),
('Los Flanders (2)', '748 Evergreen Terrace'),
('Los McAllister', '111 Evergreen Terrace'),
('Los Sideshow', '222 Evergreen Terrace'),
('Los Itchy Scratchy', '333 Evergreen Terrace');

INSERT INTO Objetos (nombre, descripcion, color, uso) VALUES
('Donuts', 'Dulce anillo frito', 'Rosado', 'Comida'),
('Televisor', 'Pantalla plana', 'Negro', 'Entretenimiento'),
('Sofa', 'Sofá de tres plazas', 'Beige', 'Mobiliario'),
('Coche', 'Sedán azul', 'Azul', 'Transporte'),
('Bicicleta', 'Bicicleta amarilla', 'Amarillo', 'Transporte'),
('Control remoto', 'Control remoto de TV', 'Negro', 'Entretenimiento'),
('Computadora', 'Laptop de trabajo', 'Plata', 'Trabajo'),
('Radio', 'Radio de onda corta', 'Rojo', 'Entretenimiento'),
('Libros', 'Colección de libros', 'Múltiples', 'Estudio'),
('Juguetes', 'Juguetes de Bart', 'Múltiples', 'Entretenimiento'),
('Guitarra', 'Guitarra acústica', 'Madera', 'Música'),
('Horno', 'Horno de cocina', 'Blanco', 'Cocinar'),
('Cámara', 'Cámara fotográfica', 'Negro', 'Fotografía'),
('Botella de cerveza', 'Botella de cerveza', 'Verde', 'Bebida'),
('Móvil', 'Teléfono inteligente', 'Negro', 'Comunicación'),
('Fútbol', 'Balón de fútbol', 'Blanco y negro', 'Deporte'),
('Cámara de seguridad', 'Cámara para vigilancia', 'Negro', 'Seguridad'),
('Escritorio', 'Escritorio de oficina', 'Madera', 'Trabajo'),
('Silla', 'Silla de oficina', 'Negra', 'Mobiliario'),
('Caja de herramientas', 'Herramientas varias', 'Naranja', 'Trabajo');

INSERT INTO Personajes (nombre, edad, genero, ocupacion, familia_id) VALUES
('Homer Simpson', 39, 'Masculino', 'Inspector de seguridad', 1),
('Marge Simpson', 38, 'Femenino', 'Ama de casa', 1),
('Bart Simpson', 10, 'Masculino', 'Estudiante', 1),
('Lisa Simpson', 8, 'Femenino', 'Estudiante', 1),
('Maggie Simpson', 1, 'Femenino', 'Bebé', 1),
('Ned Flanders', 40, 'Masculino', 'Dueño de tienda', 2),
('Maude Flanders', 39, 'Femenino', 'Ama de casa', 2),
('Krusty el Payaso', 55, 'Masculino', 'Comediante', 3),
('Patty Bouvier', 40, 'Femenino', 'Funcionaria', 4),
('Selma Bouvier', 40, 'Femenino', 'Funcionaria', 4),
('Milhouse Van Houten', 10, 'Masculino', 'Estudiante', 5),
('Nelson Muntz', 10, 'Masculino', 'Estudiante', 5),
('Seymour Skinner', 45, 'Masculino', 'Director', 6),
('Chief Wiggum', 50, 'Masculino', 'Policía', 7),
('Apu Nahasapeemapetilon', 35, 'Masculino', 'Dueño de tienda', 8),
('Mr. Burns', 104, 'Masculino', 'Dueño de la planta nuclear', 9),
('Waylon Smithers', 35, 'Masculino', 'Asistente', 9),
('Dr. Hibbert', 45, 'Masculino', 'Médico', 10),
('Moe Szyslak', 50, 'Masculino', 'Dueño de bar', 11),
('Barney Gumble', 40, 'Masculino', 'Cliente del bar', 11),
('Edna Krabappel', 38, 'Femenino', 'Maestra', 12);

INSERT INTO Personajes_Objetos (personajes_id, objetos_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 3), (2, 6), (2, 7), (2, 8), (2, 9),
(3, 10), (3, 11), (3, 12), (3, 13), (3, 14),
(4, 15), (4, 16), (4, 17), (4, 18), (4, 19),
(5, 20), (5, 1), (5, 2), (5, 3), (5, 4),
(6, 1), (6, 3), (6, 5), (6, 7), (6, 10);

INSERT INTO Vehiculos (nombre, tipo, color, personajes_id) VALUES
('Coche de Homer', 'Sedán', 'Azul', 1),
('Bicicleta de Bart', 'Bicicleta', 'Amarillo', 3),
('Coche de Marge', 'Sedán', 'Rojo', 2),
('Coche de Ned', 'SUV', 'Verde', 6),
('Camión de Krusty', 'Camión', 'Rojo', 8),
('Coche de Apu', 'Minivan', 'Blanco', 10),
('Coche de Moe', 'Coupé', 'Negro', 11),
('Coche de Burns', 'Lujoso', 'Dorado', 9),
('Bicicleta de Lisa', 'Bicicleta', 'Rosa', 4),
('Coche de Patty', 'Sedán', 'Violeta', 12),
('Coche de Selma', 'Sedán', 'Azul', 13),
('Coche de Skinner', 'Sedán', 'Gris', 14),
('Coche de Wiggum', 'SUV', 'Negro', 15),
('Coche de Milhouse', 'Sedán', 'Verde', 5),
('Coche de Nelson', 'Pick-up', 'Rojo', 6),
('Coche de Smithers', 'Sedán', 'Plata', 16),
('Coche de Dr. Hibbert', 'SUV', 'Blanco', 17),
('Coche de Flanders', 'Sedán', 'Marrón', 2),
('Coche de Krabappel', 'Coupé', 'Negro', 18),
('Coche de Edna', 'Sedán', 'Violeta', 19);

INSERT INTO Mascotas (nombre, tipo, color, personajes_id) VALUES
('Santas Little Helper', 'Perro', 'Marrón', 1),
('Snowball II', 'Gato', 'Blanco', 1),
('Hugo', 'Cerdo', 'Rosa', 1),
('Sideshow Bob', 'Pájaro', 'Multicolor', 8),
('Jasper', 'Perro', 'Blanco', 10),
('Coltrane', 'Gato', 'Negro', 11),
('Snoopy', 'Perro', 'Negro', 12),
('Blinky', 'Pez', 'Verde', 14),
('Gerald', 'Gato', 'Gris', 13),
('Reggie', 'Perro', 'Marrón', 15),
('Fido', 'Perro', 'Negro', 16),
('Bubbles', 'Pájaro', 'Amarillo', 17),
('Fluffy', 'Gato', 'Naranja', 18),
('Pinky', 'Perro', 'Blanco', 19),
('Lola', 'Gato', 'Negro', 20),
('Rex', 'Perro', 'Marrón', 18),
('Pongo', 'Perro', 'Blanco', 12),
('Max', 'Perro', 'Negro', 15),
('Buddy', 'Perro', 'Marrón', 4),
('Mittens', 'Gato', 'Blanco', 2);

INSERT INTO Eventos (nombre, descripcion) VALUES
('Cumpleaños de Bart', 'Fiesta de cumpleaños en casa'),
('Navidad', 'Celebración navideña familiar'),
('Halloween', 'Fiesta de Halloween en la escuela'),
('Día de San Valentín', 'Celebración del amor y la amistad'),
('Día de la Independencia', 'Desfile y fuegos artificiales'),
('Graduación de Lisa', 'Ceremonia de graduación en la escuela'),
('Boda de Apu', 'Boda de Apu y Manjula'),
('Concierto de Krusty', 'Concierto en el parque'),
('Día de Acción de Gracias', 'Reunión familiar'),
('Cerca del Fin del Mundo', 'Celebración de la supervivencia'),
('Visita a la Planta Nuclear', 'Excursión escolar'),
('Desfile de Primavera', 'Desfile anual en Springfield'),
('Inauguración de la Tienda de Apu', 'Fiesta de apertura'),
('Fiesta de Fin de Año', 'Celebración de Año Nuevo'),
('Día de la Tierra', 'Actividades de limpieza en la comunidad'),
('Juegos Olímpicos de Springfield', 'Competencia deportiva local'),
('Feria del Condado', 'Feria anual con juegos y comida'),
('Limpieza de la Playa', 'Evento de limpieza comunitaria'),
('Día del Trabajo', 'Fiesta de fin de verano'),
('Competencia de Talento', 'Show de talentos en la escuela');

INSERT INTO Familias_Eventos (familias_id, eventos_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 2), (2, 6), (2, 8), (2, 10), (2, 12),
(3, 1), (3, 3), (3, 7), (3, 9), (3, 15),
(4, 4), (4, 5), (4, 11), (4, 14), (4, 18),
(5, 1), (5, 3), (5, 10), (5, 16), (5, 19);

INSERT INTO Lugares (nombre, tipo, direccion, descripcion) VALUES
('Springfield Elementary', 'Escuela', '123 School St', 'Escuela primaria de Springfield'),
('Moe\'s Tavern', 'Bar', '900 Moe’s Tavern', 'Bar famoso en Springfield'),
('Krusty Burger', 'Restaurante', '456 Fast Food Rd', 'Restaurante de comida rápida'),
('Planta Nuclear de Springfield', 'Industria', '1 Nuclear Way', 'Planta nuclear de Springfield'),
('Springfield Park', 'Parque', '456 Park Ave', 'Parque comunitario'),
('Centro Comercial de Springfield', 'Comercio', '789 Mall Rd', 'Centro comercial de la ciudad'),
('Biblioteca de Springfield', 'Cultura', '321 Library Rd', 'Biblioteca pública'),
('Cine de Springfield', 'Entretenimiento', '654 Cinema St', 'Cine local'),
('Estadio de Springfield', 'Deporte', '159 Stadium Rd', 'Estadio de fútbol'),
('Museo de Springfield', 'Cultura', '987 Museum Rd', 'Museo local'),
('Playa de Springfield', 'Recreación', '200 Beach Rd', 'Playa de la ciudad'),
('Hotel de Springfield', 'Alojamiento', '111 Hotel Ave', 'Hotel en el centro'),
('Oficina del Alcalde', 'Gobierno', '321 Mayor Rd', 'Oficina del alcalde'),
('Cementerio de Springfield', 'Lugar de descanso', '123 Grave Rd', 'Cementerio local'),
('Estación de Policía', 'Gobierno', '456 Police St', 'Estación policial de la ciudad'),
('Comisaría de Bomberos', 'Gobierno', '789 Fire Rd', 'Estación de bomberos'),
('Tienda de Apu', 'Comercio', '322 Kwik-E-Mart', 'Tienda de conveniencia'),
('Iglesia de Springfield', 'Religión', '111 Church Rd', 'Iglesia local'),
('Estación de Tren de Springfield', 'Transporte', '987 Train Rd', 'Estación de tren'),
('Mercado de Springfield', 'Comercio', '654 Market St', 'Mercado local');

INSERT INTO Eventos_Lugares (lugares_id, eventos_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
(3, 11), (3, 12), (3, 13), (3, 14), (3, 15),
(4, 1), (4, 2), (4, 3), (4, 6), (4, 7),
(5, 8), (5, 9), (5, 10), (5, 14), (5, 18);

INSERT INTO Temporadas (titulo, fecha_inicio, fecha_fin) VALUES
('Temporada 1', '1989-12-17', '1990-05-13'),
('Temporada 2', '1990-10-11', '1991-09-11'),
('Temporada 3', '1991-09-19', '1992-05-06'),
('Temporada 4', '1992-09-24', '1993-05-26'),
('Temporada 5', '1993-09-30', '1994-05-22'),
('Temporada 6', '1994-09-04', '1995-05-21'),
('Temporada 7', '1995-09-17', '1996-05-19'),
('Temporada 8', '1996-10-27', '1997-05-18'),
('Temporada 9', '1997-10-18', '1998-05-17'),
('Temporada 10', '1998-08-23', '1999-05-16'),
('Temporada 11', '1999-09-28', '2000-05-20'),
('Temporada 12', '2000-11-01', '2001-05-20'),
('Temporada 13', '2001-11-06', '2002-05-22'),
('Temporada 14', '2002-11-02', '2003-05-18'),
('Temporada 15', '2003-11-21', '2004-05-22'),
('Temporada 16', '2004-11-06', '2005-05-22'),
('Temporada 17', '2005-11-06', '2006-05-21'),
('Temporada 18', '2006-09-10', '2007-05-20'),
('Temporada 19', '2007-09-23', '2008-05-18'),
('Temporada 20', '2008-10-05', '2009-05-17');

INSERT INTO Episodios (titulo, sinopsis, temporadas_id) VALUES
('Simpsons Roasting on an Open Fire', 'La familia Simpson se prepara para Navidad.', 1),
('Bart the Genius', 'Bart se hace pasar por un niño genio.', 1),
('Homer\'s Odyssey', 'Homer se convierte en el nuevo guardia de seguridad de la planta.', 1),
('The Tell-Tale Head', 'Bart le corta la cabeza a una estatua.', 1),
('Life on the Fast Lane', 'Homer compra una bola de boliche.', 1),
('The Call of the Simpsons', 'La familia va de camping.', 1),
('The Telltale Head', 'Bart roba la cabeza de una estatua.', 1),
('Krusty Gets Busted', 'Krusty es acusado de un crimen.', 1),
('The Crepes of Wrath', 'Bart es enviado a Francia como castigo.', 1),
('The Simpsons 138th Episode Spectacular', 'Un especial sobre los episodios favoritos.', 1),
('Bart Gets an F', 'Bart intenta pasar un examen.', 2),
('Lisa\'s Substitute', 'Lisa se enamora de su maestro.', 2),
('The Way We Was', 'Los Simpsons recuerdan su juventud.', 2),
('Homer vs. Lisa and the 8th Commandment', 'Homer se enfrenta a un dilema moral.', 2),
('The Computer Wore Menace Shoes', 'Homer se convierte en un blogger.', 2),
('Homer and Lisa Exchange Cross Words', 'Homer y Lisa participan en un juego de palabras.', 2),
('A Star is Burns', 'Springfield organiza un festival de cine.', 2),
('The PTA Disbands', 'La PTA se disuelve.', 2),
('Homer Goes to College', 'Homer regresa a la universidad.', 2),
('Barts Inner Child', 'Bart ayuda a Homer a encontrar su niño interior.', 2);

INSERT INTO Episodios_Eventos (episodios_id, eventos_id) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(4, 6), (4, 7), (5, 8), (6, 9), (7, 10),
(8, 11), (9, 12), (10, 13), (11, 14), (12, 15),
(13, 16), (14, 17), (15, 18), (16, 19), (17, 20);

INSERT INTO Canciones (titulo, artista) VALUES
('The Simpsons Theme', 'Danny Elfman'),
('Do the Bartman', 'Barty Simpson'),
('All Star', 'Smash Mouth'),
('Happy Birthday', 'Traditional'),
('We Are Family', 'Sister Sledge'),
('You Are My Sunshine', 'Traditional'),
('Over the Rainbow', 'Judy Garland'),
('Somewhere Only We Know', 'Keane'),
('I Will Survive', 'Gloria Gaynor'),
('I Want It That Way', 'Backstreet Boys'),
('Let It Go', 'Idina Menzel'),
('Uptown Funk', 'Mark Ronson ft. Bruno Mars'),
('Shape of You', 'Ed Sheeran'),
('Rolling in the Deep', 'Adele'),
('Blinding Lights', 'The Weeknd'),
('Watermelon Sugar', 'Harry Styles'),
('Dance Monkey', 'Tones and I'),
('Old Town Road', 'Lil Nas X'),
('Bad Guy', 'Billie Eilish'),
('Stay', 'The Kid LAROI & Justin Bieber');

INSERT INTO Episodios_Canciones (episodios_id, canciones_id) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(4, 6), (5, 7), (6, 8), (7, 9), (8, 10),
(9, 11), (10, 12), (11, 13), (12, 14), (13, 15),
(14, 16), (15, 17), (16, 18), (17, 19), (18, 20);

