
# Création d'un modèle de base de données d'une franchise de salle de cinéma

## Besoin du clients

Le client désire une application de réservation de place de cinéma.

Le client possède plusieurs salles de cinéma ayant chacune plusieurs salles de projection avec différents créneaux horaires de projection.

Le client désire disposer de différents moyens de paiement (sur place ou en ligne).

En termes d'administration, le client souhaite 2 types de profils :

- Ajout, modification et suppression des films et des programmations par salle de cinéma (rôle MANAGER).
- Ajout, modification et suppression des films et des programmations de toutes salles de cinéma de la franchise (rôle MANAGER).

Le cinema propose 3 differents tarif:
- plein tarif : 9,20€
- Etudiant : 7,60€
- Moins de 14 ans : 5,90€

## Architecture de la base de données

Identification du besoin de 13 tables:

1. roles:
- id Clé **primaire auto-incrémenté**
- name

2. employers
- id Clé **primaire auto-incrémenté**
- firstname
- lastname
- birth_date
- phone_number
- email
- password
- role_id **Clé étrangère lié à la clé primaire de la table roles**
- theater_id **Clé étrangère lié à la clé primaire de la table theaters**

3. clients
- id **Clé primaire auto-incrémenté**
- firstname
- lastname
- birth_date
- phone_number
- email
- password

4. theaters
- id **Clé primaire auto-incrémenté**
- name
- address
- phone_number
- zip_code
- city

5. auditoriums
- id **Clé primaire auto-incrémenté**
- number
- total_seats
- theater_id **Clé étrangère lié à la clé primaire de la table theaters**

6. seats
- id **Clé primaire auto-incrémenté**
- avaible
- show_id
- auditorium_id **Clé étrangère lié à la clé primaire de la table auditoriums**

7. shows
- id **Clé primaire auto-incrémenté**
- hour_start
- hour_finish
- date_start
- date_finish
- movie_id **Clé étrangère lié à la clé primaire de la table movie**

8. movies
- id **Clé primaire auto-incrémenté**
- name
- year
- synopsis
- gender
- director
- movie_time

9. tickets
- id **Clé primaire auto-incrémenté**
- date
- total_ticket
- total_amount
- seat_id **Clé étrangère lié à la clé primaire de la table seats**
- costumer_id **Clé étrangère lié à la clé primaire de la table costumers**

10. ticket_fares
- ticket_id **Clé primaire et Clé étrangère lié à la clé primaire de la table tickets**
- fare_id **Clé primaire et Clé étrangère lié à la clé primaire de la table fares**

11. fares
- id **Clé primaire auto-incrémenté**
- name
- price

12. pay_method_ticket
- ticket_id **Clé primaire et Clé étrangère lié à la clé primaire de la table tickets**
- pay_method_id **Clé primaire et Clé étrangère lié à la clé primaire de la table pay_methods**

13. pay_method
- id **Clé primaire auto-incrémenté**
- name

## Contenu

J’ai créé un diagramme et 3 dossiers :

1. CREATE
 Création de base de données, d’utilisateur et de mot de passe avec tous les privilèges et les tables.

2. INSERT
 Insertion de données dans les tables

3. PROCEDURE
 Procédures pour la vérification de fonctionnement lors de l’achat de billets.



## Tester en local

Cloner le project

```bash
  https://github.com/dizorder3/salle_cinema.git
```

Aller dans le répertoire du projet

```bash
  cd salle_de_cinema
```


## Auteur

- [@dizorder3](https://www.github.com/dizorder3)

