/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS fares;

/* Je crée la table fares */
CREATE TABLE fares (
   id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name varchar(25) NOT NULL,
   price DECIMAL(10,2) NOT NULL
);