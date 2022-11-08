/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS pay_methods;

/* Je crée la table pay_methods */
CREATE TABLE pay_methods (
   id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   name varchar(25) NOT NULL
);