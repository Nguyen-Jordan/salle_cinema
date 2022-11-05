/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS seats;

/* Je crée la table seats */
CREATE TABLE seats (
   id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   number TINYINT NOT NULL,
   auditorium_id INT NOT NULL,
   FOREIGN KEY (auditorium_id) REFERENCES auditoriums (id)
);