CREATE DATABASE Startrek;
USE Startrek;
CREATE TABLE ACTORES (
    Codigo INTEGER PRIMARY KEY;
    Nombre VARCHAR(40),
    Fecha DATE,
    Nacionalidad VARCHAR(20)
)

CREATE TABLE PERSONAJES (
    Codigo INTEGER PRIMARY KEY;
    Nombre VARCHAR(20),
    Raza VARCHAR(20),
    Grado VARCHAR(20),
    FOREIGN KEY (codigoActor) REFERENCES ACTORES(Codigo),
    FOREIGN KEY (CodigoSuperior) REFERENCES ACTORES(Codigo),
)

CREATE TABLE PLANETAS (
    Codigo INTEGER PRIMARY KEY;
    GALAXIA VARCHAR(20),
    Nombre VARCHAR(20),
)

CREATE TABLE CAPITULOS (
    Temporada INT,
    Orden INT,
    Titulo VARCHAR(25),
    Fecha DATE,
    PRIMARY KEY (Temporada, Orden)
)

CREATE TABLE PELICULAS (
    Codigo INTEGER PRIMARY KEY,
    Titulo VARCHAR(25),
    Director VARCHAR(25),
    Ano DATE,
)

CREATE TABLE PERSONAJESCAPITULOS (
    FOREIGN KEY (CodigoPersonaje) REFERENCES PERSONAJES (Codigo),
    FOREIGN KEY (Temporada) REFERENCES CAPITULOS (Temporada),
    FOREIGN KEY (Orden) REFERENCES CAPITULOS (Orden),
    PRIMARY KEY (CodigoPersonaje, Temporada, Orden)
)

CREATE TABLE PERSONAJESPELICULAS (
    FOREIGN KEY (CodigoPersonaje) REFERENCES PERSONAJES (Codigo),
    FOREIGN KEY (CodigoPelicula) REFERENCES PELICULAS (Codigo),
    PRIMARY KEY (CodigoPersonaje, CodigoPelicula)
)





/*
 ACTORES (Código, Nombre, Fecha, Nacionalidad)
 
 PERSONAJES(Código, Nombre, Raza, Grado, CodigoActor, CodigoSuperior)
 
 PLANETAS(Código, Galaxia, Nombre)
 
 CAPÍTULOS(Temporada, Orden, Título, Fecha)
 
 PELÍCULAS(Código, Título, Director, Año)
 
 PERSONAJESCAPITULOS(CódigoPersonaje, Temporada, Orden)
 
 PERSONAJESPELICULAS(CódigoPersonaje, CódigoPelícula)
 
 VISITAS(CódigoNave, CódigoPlaneta, Temporada, Orden)
 
 NAVES(Código, Nº Tripulantes, Nombre)
 */
