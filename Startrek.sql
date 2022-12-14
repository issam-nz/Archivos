CREATE DATABASE Startrek;
USE Startrek;
CREATE TABLE ACTORES (
    Codigo INTEGER PRIMARY KEY,
    Nombre VARCHAR(40),
    Fecha DATE,
    Nacionalidad VARCHAR(20)
)

CREATE TABLE PERSONAJES (
    Codigo INTEGER PRIMARY KEY,
    Nombre VARCHAR(20),
    Raza VARCHAR(20),
    Grado VARCHAR(20),
    codigoActor INT,
    CodigoSuperior INT,
    FOREIGN KEY (codigoActor) REFERENCES ACTORES(Codigo),
    FOREIGN KEY (CodigoSuperior) REFERENCES ACTORES(Codigo),
)

CREATE TABLE PLANETAS (
    Codigo INTEGER PRIMARY KEY,
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
    CodigoPersonaje INT,
    Temporada INT,
    Orden INT,
    FOREIGN KEY (CodigoPersonaje) REFERENCES PERSONAJES (Codigo),
    FOREIGN KEY (Temporada) REFERENCES CAPITULOS (Temporada),
    FOREIGN KEY (Orden) REFERENCES CAPITULOS (Orden),
    PRIMARY KEY (CodigoPersonaje, Temporada, Orden)
)

CREATE TABLE PERSONAJESPELICULAS (
    CodigoPersonaje INT,
    CodigoPelicula INT,
    FOREIGN KEY (CodigoPersonaje) REFERENCES PERSONAJES (Codigo),
    FOREIGN KEY (CodigoPelicula) REFERENCES PELICULAS (Codigo),
    PRIMARY KEY (CodigoPersonaje, CodigoPelicula)
)

CREATE TABLE VISITAS (
    CodigoNave INT,
    CodigoPlaneta INT,
    Temporada INT,
    Orden INT,
    FOREIGN KEY (CodigoNave) REFERENCES NAVES (Codigo),
    FOREIGN KEY (CodigoPlaneta) REFERENCES PLANETAS (Codigo),
    FOREIGN KEY (Temporada) REFERENCES CAPITULOS (Temporada),
    FOREIGN KEY (Orden) REFERENCES CAPITULOS (Orden),
    PRIMARY KEY (CodigoNave, CodigoPlaneta, Temporada, Orden)
)


CREATE TABLE NAVES (
    Codigo INTEGER PRIMARY KEY,
    NumTri INT,
    Nombre VARCHAR(20),
)

