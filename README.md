# Base_de_donnees_MCU

## les titres et dates de sorties des films du plus récent au plus ancien

````
SELECT `title`, `release date` 
FROM `movies` 
ORDER BY `movies`.`release date` DESC
````

-------------------------------------------------------------------------------------
## les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique
````
SELECT `name`, `first_name`, (DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(`dob`)), '%Y')+0) AS Age
FROM `actors` 
WHERE (DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(`dob`)), '%Y')+0) > 30  
ORDER BY `actors`.`name` ASC, `actors`.`first_name`  ASC
````

-------------------------------------------------------------------------------------
## la liste des acteurs pour un film donné
````
SELECT `name`,`first_name`,`dob`,`creation_date`,`modification_date`
FROM actors
INNER JOIN relationships ON relationships.name_id=name
INNER JOIN movies ON movies.title=relationships.title_id
WHERE movies.title='iron man'
````

-------------------------------------------------------------------------------------
## la liste des films pour un acteur donné
````
SELECT `title`,`movie duration`,`release date`,`director`,`creation date`,`modification date`
FROM movies
INNER JOIN relationships ON relationships.title_id=title
INNER JOIN actors ON actors.name=relationships.name_id
WHERE actors.name='Evans'
````

-------------------------------------------------------------------------------------
### une requête pour ajouter un film

````
INSERT INTO `movies`(`title`, `release date`, `movie duration`, `director`) 
VALUES ('Docteur Strange','2022-05-04','115','Scott Derrickson')
````
------------------------------------------------------------------------------------

### une requête pour ajouter un acteur
````
INSERT INTO `actors`(`name`, `first_name`, `dob`) 
VALUES ('Cumberbatch','Benedict','1976-07-19')
````
------------------------------------------------------------------------------------

### une requête pour modifier un film
````
UPDATE `movies` SET `movie duration`='120' 
WHERE `title`='Docteur Strange'
````
-------------------------------------------------------------------------------------

### une requête pour supprimer un acteur
````
DELETE FROM `actors` 
WHERE `name`='Cumberbatch'
````
------------------------------------------------------------------------------------

### une requête pour afficher les 3 derniers acteurs ajoutés
````
SELECT * 
FROM `actors` 
ORDER BY `creation date` DESC 
LIMIT 3
````

Correction Steeven: ajouter des _ pour la table movies et ajouter _ au création date ligne 74 dans le readme
