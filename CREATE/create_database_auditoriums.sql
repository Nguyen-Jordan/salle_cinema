/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS auditoriums;

/* Je crée la table auditoriums */
CREATE TABLE auditoriums (
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   number TINYINT NOT NULL,
   theater_id INT NOT NULL,
   FOREIGN KEY (theater_id) REFERENCES theaters (id)
);