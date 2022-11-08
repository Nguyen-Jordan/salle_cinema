/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS tickets;

/* Je crée la table tickets */
CREATE TABLE tickets (
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date DATETIME NOT NULL,
    total_ticket INT(11) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    seat_id INT(11) NOT NULL,
    costumer_id INT(11) NOT NULL,
    FOREIGN KEY (seat_id) REFERENCES seats (id)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT,
    FOREIGN KEY (costumer_id) REFERENCES clients (id)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
);