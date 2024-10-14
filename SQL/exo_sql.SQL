-- Création de table sous SQL : --

CREATE TABLE  CLUB (
  ID_CLUB INT(5) NOT NULL, 
  NOM VARCHAR(150),
  VILLE VARCHAR(30),
  PRIMARY KEY (ID_CLUB)
);

CREATE TABLE  JUDOKA (
  ID_JUDOKA INT(6) NOT NULL,
  NOM VARCHAR(20),
  PRENOM VARCHAR(20),
  ID_CLUB INT(5),
  PRIMARY KEY (ID_JUDOKA),
  FOREIGN KEY (id_club) REFERENCES CLUB

----------------------------------------------------------------------------------------------------------------
-- Exemple pour créer des lignes dans une table. --

insert into club VALUES ( 2 , 'Le Clan Uchihua' , 'Paris' ) ;
insert into club VALUES ( 3 , 'La Team Sakura' , 'Nice1' ) ;
insert into club VALUES ( 4 , 'JCVD dans nos coeurs' , 'Nice2' ) ;
insert into club VALUES ( 5, 'Ici on fait du judo' , 'Pau' ) ; 
insert into club VALUES ( 1 , 'Le Judo pour les nazes' , 'Lyon' ) ;

----------------------------------------------------------------------------------------------------------------

insert into JUDOKA values ( 1, 'Charenton'  , 'Sebastien' , 1);
insert into JUDOKA values ( 2, 'Cacahuète' , 'Pirouette' , 1); 
insert into JUDOKA values ( 3, 'Haruno' , 'Sakura' , 1); 
insert into JUDOKA values ( 4, 'Heartfilia' , 'Lucy' , 1); 
insert into JUDOKA values ( 5, 'Ketchum' , 'Ash' , 1);

----------------------------------------------------------------------------------------------------------------
-- Commande pour nous montrer des informations en fonction de la recherche. --

SELECT JUDOKA.NOM , JUDOKA.PRENOM           -- Dans cette ligne on écrit les infos que l'on cherche
FROM CLUB , JUDOKA                          -- Dans quelle table on les cherche
WHERE CLUB.VILLE = 'Paris' and CLUB.ID_CLUB = JUDOKA.ID_CLUB -- En précisant dans quelle enregristrement et en faisant la jonction 
                                                             -- des deux tables.

----------------------------------------------------------------------------------------------------------------

select Club.NOM from CLUB	
Where CLUB.VILLE = 'Paris' 

----------------------------------------------------------------------------------------------------------------
-- Création de table et d une table associative. --

create table TOURNOI (
  ID_TOURNOI INT(4),
  NOM_TOURNOI VARCHAR(120),
  PRIMARY KEY (ID_TOURNOI)
  );
  
CREATE TABLE PARTICIPER (
  id_judoka int(6),
  id_tournoi int(4),
  PRIMARY KEY (id_judoka , id_tournoi) ,           -- Création de table associtive en lui donnant en primary key les deux id
  FOREIGN KEY (id_judoka) REFERENCES JUDOKA ,      -- Et en foreign key aussi en incluant la référence de la table.
  FOREIGN KEY (ID_TOURNOI) REFERENCES TOURNOI 
  );

----------------------------------------------------------------------------------------------------------------

INSERT INTO TOURNOI VALUES (1 , 'OPENPRIME');
INSERT INTO TOURNOI VALUES (2 , 'Le Collisé de l êtreme');
INSERT INTO TOURNOI VALUES (3 , 'PASDIDEE');
INSERT INTO TOURNOI VALUES (4 , 'TOUJOURSPASDIDEE');

----------------------------------------------------------------------------------------------------------------

INSERT INTO PARTICIPER VALUES (1 , 1);
INSERT INTO PARTICIPER VALUES (6 , 1);
INSERT INTO PARTICIPER VALUES (11 , 1);
INSERT INTO PARTICIPER VALUES (16 , 1);
INSERT INTO PARTICIPER VALUES (21 , 1);

----------------------------------------------------------------------------------------------------------------
-- Montrer les infos qu'on cherche mais avec une jointure plus compliqué avec une table associative. --

SELECT JUDOKA.NOM
FROM TOURNOI, JUDOKA, PARTICIPER
WHERE TOURNOI.NOM_TOURNOI = 'OPENPRIME' AND TOURNOI.ID_TOURNOI = PARTICIPER.ID_TOURNOI AND PARTICIPER.ID_JUDOKA = JUDOKA.ID_JUDOKA;

----------------------------------------------------------------------------------------------------------------
-- UPDATE : modifie les données dans les lignes de la table. --

UPDATE nom_de_la_table
SET colonne1 = nouvelle_valeur1, colonne2 = nouvelle_valeur2, ...
WHERE condition;

-- ex : 
UPDATE Employes
SET salaire = 50000
WHERE id = 1;

----------------------------------------------------------------------------------------------------------------
-- ALTER : modifie la structure de la table (ajout, suppression ou modification de colonnes). --

ALTER TABLE nom_de_la_table
ADD nom_de_la_colonne type_de_donnée;

-- ex :
ALTER TABLE Employes      --Cela ajoute une colonne date_embauche de type DATE à la table Employes.
ADD date_embauche DATE;

ALTER TABLE nom_de_la_table
MODIFY nom_de_la_colonne nouveau_type;

-- ex :
ALTER TABLE Employes                -- Cela modifie la colonne salaire pour qu'elle soit de type D
MODIFY salaire DECIMAL(10, 2);      -- ECIMAL avec une précision de 10 chiffres et 2 décimales.

ALTER TABLE nom_de_la_table
RENAME COLUMN ancien_nom TO nouveau_nom;

-- ex :
ALTER TABLE Employes                       --Cela renomme la colonne salaire en remuneration.
RENAME COLUMN salaire TO remuneration;

ALTER TABLE nom_de_la_table
DROP COLUMN nom_de_la_colonne;

-- ex : 
ALTER TABLE Employes                    --Cela supprime la colonne adresse de la table Employes.
DROP COLUMN adresse; 

----------------------------------------------------------------------------------------------------------------
--  ECRITURE MOCODO --

Club: ID_CLUB, nom, Ville
Judoka: ID_judoka, nom, prenom
Tournoi: ID_tournoi, nom_tournoi
Categorie: ID_categorie, nom_categorie

Posseder, 0N Club, 01 Judoka
Participer, 0N Judoka, 0N Tournoi
Appartenir, 11 Judoka, 0N Categorie