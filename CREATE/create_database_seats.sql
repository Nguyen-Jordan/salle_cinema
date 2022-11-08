/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS seats;

/* Je crée la table seats */
CREATE TABLE seats (
   id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   avaible INT(11) NOT NULL,
   show_id INT(11) NOT NULL,
   auditorium_id INT(11) NOT NULL,
   FOREIGN KEY (show_id) REFERENCES shows (id)
       ON UPDATE RESTRICT
       ON DELETE RESTRICT,
   FOREIGN KEY (auditorium_id) REFERENCES auditoriums (id)
       ON UPDATE RESTRICT
       ON DELETE RESTRICT
);