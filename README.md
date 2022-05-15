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

### une requête pour ajouter un acteur

### une requête pour modifier un film

### une requête pour supprimer un acteur

### une requête pour afficher les 3 derniers acteurs ajoutés
