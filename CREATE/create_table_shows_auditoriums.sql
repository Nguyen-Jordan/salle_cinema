/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS shows_auditoriums;

/* Je crée la table shows_auditoriums */
CREATE TABLE shows_auditoriums (
    show_id INT NOT NULL,
    auditorium_id INT NOT NULL,
    PRIMARY KEY (show_id, auditorium_id),
    FOREIGN KEY (show_id) REFERENCES shows (id),
    FOREIGN KEY (auditorium_id) REFERENCES auditoriums (id)
);