/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    clients (firstname, lastname, birth_date, phone_number, email, password)
VALUES
    ('Mayor', 'Marquins', '1970-04-29' , 0768996454 , 'marquins@redapple.com', MD5('Sniuqram')),
    ('Joe ', 'Gage ', '2012-12-13' , 0768985452 , 'gage@redapple.com', MD5('Egag')),
    ('Chris', 'Mannix ', '2008-05-12' , 0768365698 , 'mannix@redapple.com', MD5('Xinnam'));