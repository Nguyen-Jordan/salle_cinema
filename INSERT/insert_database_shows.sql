/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    shows (hour_start, hour_finish, date_start, date_finish, movie_id)
VALUES
    ('09:00:00', '11:45:00', '2022-11-05', '2022-11-25', 1),
    ('13:00:00', '15:45:00', '2022-11-05', '2022-11-25', 1),
    ('09:00:00', '10:51:00', '2022-11-05', '2022-11-25', 2),
    ('13:00:00', '14:51:00', '2022-11-05', '2022-11-25', 2),
    ('09:00:00', '11:17:00', '2022-11-05', '2022-11-25', 3),
    ('13:00:00', '15:17:00', '2022-11-05', '2022-11-25', 3),
    ('09:00:00', '11:32:00', '2022-11-05', '2022-11-25', 4),
    ('13:00:00', '15:32:00', '2022-11-05', '2022-11-25', 4),
    ('09:00:00', '12:07:00', '2022-11-05', '2022-11-25', 5),
    ('13:00:00', '16:07:00', '2022-11-05', '2022-11-25', 5);
