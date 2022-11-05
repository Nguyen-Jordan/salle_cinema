/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS theaters;

/* Je crée la table theaters */
CREATE TABLE theaters (
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name VARCHAR(25) NOT NULL,
   address VARCHAR(25) NOT NULL,
   phone_number INT NOT NULL,
   zip_code SMALLINT NOT NULL,
   city VARCHAR(20) NOT NULL
);