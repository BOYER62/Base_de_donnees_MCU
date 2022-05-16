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
SELECT `name`, `first name`, `dob` 
FROM `actor` 
WHERE (DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(`dob`)), '%Y')+0) > 30  
ORDER BY `actor`.`name` ASC, `actor`.`first name`  ASC
````

-------------------------------------------------------------------------------------
## la liste des acteurs pour un film donné



-------------------------------------------------------------------------------------
## la liste des films pour un acteur donné




-------------------------------------------------------------------------------------
### une requête pour ajouter un film

''''
INSERT INTO `movies`(`title`, `release date`, `movie duration`, `director`) VALUES ('Docteur Strange','2022-05-04','115','Scott Derrickson')
''''
------------------------------------------------------------------------------------

### une requête pour ajouter un acteur
''''
INSERT INTO `actors`(`name`, `first name`, `dob`) VALUES ('Cumberbatch','Cumberbatch','1976-07-19')
''''
-------------------------------------------------------------------------------------

### une requête pour modifier un film
''''
UPDATE `movies` SET `movie duration`='120' WHERE `title`='Docteur Strange'
''''
-------------------------------------------------------------------------------------

### une requête pour supprimer un acteur

### une requête pour afficher les 3 derniers acteurs ajoutés
