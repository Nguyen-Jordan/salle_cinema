/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS auditoriums;

/* Je crée la table auditoriums */
CREATE TABLE auditoriums (
   id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   number TINYINT(11) NOT NULL,
   total_seats INT(11) NOT NULL ,
   theater_id INT(11) NOT NULL,
   FOREIGN KEY (theater_id) REFERENCES theaters (id)
   ON UPDATE RESTRICT
   ON DELETE RESTRICT
);