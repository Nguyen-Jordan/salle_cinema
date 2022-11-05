/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    theaters (name, address, phone_number, zip_code, city)
VALUES
    ('Red apple Élysées', '27-33 Av. des Champs-Élysées', 0892696692, 75008, 'Paris'),
    ('Red apple Beaugrenelle', '7 Rue Linois', 0892697692, 75015, 'Paris');