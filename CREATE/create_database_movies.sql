/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS movies;

/* Je crée la table movies */
CREATE TABLE movies (
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name VARCHAR(25) NOT NULL,
   year SMALLINT NOT NULL,
   synopsis TEXT(5000) NOT NULL,
   gender varchar(25) NOT NULL,
   director VARCHAR(25) NOT NULL,
   movie_time TIME NOT NULL
);