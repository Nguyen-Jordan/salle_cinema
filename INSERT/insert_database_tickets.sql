/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    tickets (date,total_ticket, total_amount, seat_id, costumer_id)
VALUES
    ('2022-11-06 09:12:45', 18.40,2, 1, 1),
    ('2022-11-06 09:12:45', 18.40,2, 2, 1),
    ('2022-11-06 09:12:45', 16.80,2, 3, 2),
    ('2022-11-06 09:12:45', 16.80,2, 4, 2),
    ('2022-11-06 09:12:45', 13.50,2, 5, 3),
    ('2022-11-06 09:12:45', 13.50,2, 6, 3);
