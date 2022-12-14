
USE Startrek;
CREATE TABLE ACTORES (
    Codigo INTEGER PRIMARY KEY,
    Nombre VARCHAR(40),
    Fecha DATE,
    Nacionalidad VARCHAR(20)
);

CREATE TABLE PERSONAJES (
    Codigo INTEGER PRIMARY KEY,
    Nombre VARCHAR(20),
    Raza VARCHAR(20),
    Grado VARCHAR(20),
    codigoActor INTEGER REFERENCES ACTORES(Codigo),
    CodigoSuperior INTEGER REFERENCES ACTORES(Codigo)
);

CREATE TABLE PLANETAS (
    Codigo INTEGER PRIMARY KEY,
    GALAXIA VARCHAR(20),
    Nombre VARCHAR(20)
);

CREATE TABLE CAPITULOS (
    Temporada INT,
    Orden INT,
    Titulo VARCHAR(25),
    Fecha DATE,
    PRIMARY KEY (Temporada, Orden)
);

CREATE TABLE PELICULAS (
    Codigo INTEGER PRIMARY KEY,
    Titulo VARCHAR(25),
    Director VARCHAR(25),
    Ano DATE
);

CREATE TABLE PERSONAJESCAPITULOS (
    CodigoPersonaje INTEGER REFERENCES PERSONAJES (Codigo),
    Temporada INTEGER REFERENCES CAPITULOS (Temporada),
    Orden INTEGER REFERENCES CAPITULOS (Orden),
    PRIMARY KEY (CodigoPersonaje, Temporada, Orden)
);

CREATE TABLE PERSONAJESPELICULAS (
    CodigoPersonaje INTEGER REFERENCES PERSONAJES (Codigo),
    CodigoPelicula INTEGER REFERENCES PELICULAS (Codigo),
    PRIMARY KEY (CodigoPersonaje, CodigoPelicula)
);

CREATE TABLE VISITAS (
    CodigoNave INTEGER REFERENCES NAVES (Codigo),
    CodigoPlaneta INTEGER REFERENCES PLANETAS (Codigo),
    Temporada INTEGER REFERENCES CAPITULOS (Temporada),
    Orden INTEGER REFERENCES CAPITULOS (Orden),
    PRIMARY KEY (CodigoNave, CodigoPlaneta, Temporada, Orden)
);


CREATE TABLE NAVES (
    Codigo INTEGER PRIMARY KEY,
    NumTri INT,
    Nombre VARCHAR(20)
);
