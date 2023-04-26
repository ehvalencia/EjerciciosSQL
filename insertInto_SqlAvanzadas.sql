USE SqlAvanzadas;
#Tabla LIBRO:

INSERT INTO LIBRO (idLIBRO, Titulo, Editorial, Area) VALUES
(1, 'Cien años de soledad', 'Sudamericana', 'Ficción'),
(2, 'El Aleph', 'Emece', 'Ficción'),
(3, 'El Principito', 'Antoine de Saint-Exupéry', 'Ficción'),
(4, 'El Quijote', 'Real Academia Española', 'Ficción'),
(5, 'La Odisea', 'Homero', 'Clásicos');

#Tabla AUTOR:

INSERT INTO AUTOR (idAUTOR, Nombre, Nacionalidad) VALUES
(1, 'Gabriel García Márquez', 'Colombia'),
(2, 'Jorge Luis Borges', 'Argentina'),
(3, 'Antoine de Saint-Exupéry', 'Francia'),
(4, 'Miguel de Cervantes', 'España'),
(5, 'Homero', 'Grecia');

#Tabla LIBROAUTOR:

INSERT INTO LIBROAUTOR (IdAutor, idLibro) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

#Tabla PRESTAMO:

INSERT INTO PRESTAMO ( idLector, idLibro, FechaPrestamo, FechaDevolucion, Devuelto) VALUES
( 1, 1, '2023-04-15', '2023-05-15', 'No'),
( 2, 2, '2023-04-16', '2023-05-16', 'No'),
( 3, 3, '2023-04-17', '2023-05-17', 'No'),
( 4, 4, '2023-04-18', '2023-05-18', 'No'),
( 5, 5, '2023-04-19', '2023-05-19', 'No');

#Tabla ESTUDIANTE:

INSERT INTO ESTUDIANTE (idESTUDIANTE, idLector, Nombre, Apellido, Direccion, Carrera, Edad) VALUES
(1, 1, 'Juan', 'García', 'Av. Siempreviva 123', 'Ingeniería', '23'),
(2, 2, 'María', 'López', 'Calle Falsa 321', 'Medicina', '21'),
(3, 3, 'Pedro', 'Martínez', 'Calle Falsa 321', 'Psicología', '25'),
(4, 4, 'Lucía', 'González', 'Av. Siempreviva 123', 'Arquitectura', '22'),
(5, 5, 'José', 'Pérez', 'Av. Siempreviva 123', 'Derecho', '24');