/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    tickets (date, total_amount, fare_id, seat_id, costumer_id)
VALUES
    ('2022-11-06 09:12:45', 18.40, 1, 1,1),
    ('2022-11-06 09:12:45', 18.40, 1, 1,1),
    ('2022-11-06 09:12:45', 16.80, 2, 2,2),
    ('2022-11-06 09:12:45', 16.80, 1, 2,2),
    ('2022-11-06 09:12:45', 13.50, 2, 2,3),
    ('2022-11-06 09:12:45', 13.50, 3, 2,3);
