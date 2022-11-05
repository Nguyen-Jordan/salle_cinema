/* Je supprime la base de donnée si elle existe déjà*/
DROP SCHEMA IF EXISTS cinema_db;

/* Je crée la base de données*/
CREATE DATABASE cinema_db DEFAULT CHARACTER SET = 'utf8mb4';

/* Je crée un utilisateur */
CREATE USER bigboss IDENTIFIED BY 'Tarantino';

/* Je lui donne la permission à l'utilisateur créé précédemment d'accéder à la base de données */
GRANT ALL PRIVILEGES ON cinema_db.* TO 'bigboss';

/* Mise à jour des permissions*/
FLUSH PRIVILEGES;