CREATE DATABASE cinema;

USE cinema;

CREATE TABLE categorias(
Id_categorias INT,
Categoria VARCHAR (25),
PRIMARY KEY (Id_categorias)
);

CREATE TABLE filmes (
Id_filme INT,
Id_categorias INT,
Nome VARCHAR (40),
PRIMARY KEY (Id_filme),
FOREIGN KEY (Id_categorias) REFERENCES categorias(Id_categorias)
);

INSERT INTO filmes VALUES
(1,'Sport'),
(2,'Drama');

INSERT INTO filmes VALUES
(1043,1,'Cavalos vs Ferrari'),
(1044,2,'Speed Whater');


CREATE TABLE atores(
Id_atores INT,
Nome VARCHAR (60),
Data_Nascimento DATE,
FOREIGN KEY (Id_atores) REFERENCES filmes(Id_filme)
);

INSERT INTO atores VALUES
(1,'Jhon Alper','1998-09-09'),
(2,'Carlos Cardoso','1996-05-06'),
(3,'Paulo Notas','2000-10-04'),
(4,'Liandro Costa','2003-11-01');




INSERT INTO categotias VALUES
(1,'Sport'),
(2,'Terror'),
(3,'Aventura'),
(4,'Comedia');

SELECT filmes.Id_filme
FROM filmes
LEFT JOIN categorias
ON categorias.Id_categorias = filmes.
WHERE categorias.Id_categorias = 'Sport'
ORDER BY filmes.Id_filme ASC;