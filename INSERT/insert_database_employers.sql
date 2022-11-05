/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* J'insère des données factices dans la table */
INSERT INTO
    employers (firstname, lastname, birth_date, phone_number, email, password, role_id, theater_id)
VALUES
    ('Beatrix', 'Kiddo', '1970-04-29' , 0768996454 , 'kiddo@redapple.com', MD5('Oddik'), 2, 1),
    ('Django ', 'Freeman ', '1810-12-13' , 0768985452 , 'freeman@redapple.com', MD5('Nameerf'), 2, 2),
    ('Marsellus', 'Wallace ', '1959-05-12' , 0768365698 , 'wallace@redapple.com', MD5('Ecallaw'), 1, NULL);