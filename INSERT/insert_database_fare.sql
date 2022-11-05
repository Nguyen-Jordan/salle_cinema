/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    fares (name, price)
VALUES
    ('Plein tarif', 9.20),
    ('Etudiant', 7.60),
    ('Moins de 14 ans', 5.90);
