/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS tickets;

/* Je crée la table tickets */
CREATE TABLE tickets (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date DATETIME NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    fare_id INT NOT NULL ,
    show_id INT NOT NULL,
    auditorium_id INT NOT NULL,
    seat_id INT NOT NULL,
    costumer_id INT NOT NULL,
    FOREIGN KEY (fare_id) REFERENCES fares (id),
    FOREIGN KEY (show_id) REFERENCES shows (id),
    FOREIGN KEY (auditorium_id) REFERENCES auditoriums (id),
    FOREIGN KEY (seat_id) REFERENCES seats (id),
    FOREIGN KEY (costumer_id) REFERENCES clients (id)
);