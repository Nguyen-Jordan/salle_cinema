/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS shows;

/* Je crée la table shows */
CREATE TABLE shows (
   id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   hour_start TIME NOT NULL,
   hour_finish TIME NOT NULL,
   date_start DATE NOT NULL,
   date_finish DATE NOT NULL,
   movie_id INT(11) NOT NULL,
   FOREIGN KEY (movie_id) REFERENCES movies (id)
       ON UPDATE RESTRICT
       ON DELETE RESTRICT
);