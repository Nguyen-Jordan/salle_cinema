/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS ticket_details;

/* Je crée la table ticket_details */
CREATE TABLE ticket_details (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    ticket_id INT NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES tickets (id)
);