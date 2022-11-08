/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS pay_method_tickets;

/* Je crée la table pay_method_tickets */
CREATE TABLE pay_method_tickets (
    ticket_id INT(11) NOT NULL,
    pay_method_id INT(11) NOT NULL,
    PRIMARY KEY (ticket_id, pay_method_id),
    FOREIGN KEY (ticket_id) REFERENCES tickets (id),
    FOREIGN KEY (pay_method_id) REFERENCES pay_methods (id)
);