/* Procedure pour générer un achat de billets */
DELIMITER $

CREATE OR REPLACE PROCEDURE getSeatsAvaible ( ticket_seat_id INT, ticket_total_ticket INT, ticket_total_amount INT, ticket_costumer_id INT)

BEGIN
    /* Je vérifie si l'achat est possible et s'il reste assez de places dans la séance */
    IF (SELECT avaible FROM seats WHERE id=ticket_seat_id) >= ticket_total_ticket
        THEN
            /* J'ajoute l'achat a la table ticket */
            INSERT INTO tickets (date, seat_id, total_ticket, total_amount, costumer_id)
                VALUES
                    (NOW(), ticket_seat_id, ticket_total_ticket, ticket_total_amount, ticket_costumer_id);

            /* Je mets à jour le nombre de sièges disponibles pour le show */
            UPDATE seats SET avaible = avaible - ticket_total_ticket WHERE id=ticket_seat_id;

    end if;
END$

DELIMITER ;

SHOW PROCEDURE STATUS LIKE 'getTicketShowLeft';

CALL getSeatsAvaible(1, 3, 27.6, 1);
CALL getSeatsAvaible(1, 3, 27.6, 2);