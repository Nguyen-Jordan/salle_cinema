/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS clients;

/* Je crée la table clients */
CREATE TABLE clients (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(25) NOT NULL,
    lastname VARCHAR(25) NOT NULL,
    birth_date DATE NOT NULL,
    phone_number varchar(14),
    email VARCHAR(40) NOT NULL,
    password VARCHAR(20) NOT NULL
);