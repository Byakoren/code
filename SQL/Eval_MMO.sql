--Supprimer la table demo--
DROP TABLE DEMO;

--Création table Competence--
CREATE TABLE COMPETENCE (
  ID_COMPETENCE INT(2) NOT NULL, 
  type_pouvoir VARCHAR(20),
  type_attribut VARCHAR(20),
  PRIMARY KEY (ID_COMPETENCE)
);

--Création table bonus_stat--
CREATE TABLE BONUS_STAT (
  ID_BONUS int(2), 
  VITALITE int(2),
  ENDURANCE int(2),
  FORCE int(2),
  AGILITER int(2),
  VIGUEUR int(2),
  INTELLIGENCE int(2),
  MANA int(2),
  PRIMARY KEY (ID_BONUS)
);

--Création table Personnage avex jonction--
CREATE TABLE  PERSONNAGE (
  ID_personnage INT(3) NOT NULL,
  NOM VARCHAR(20),
  CLASSE VARCHAR(20),
  NIVEAU int(2),
  ID_COMPETENCE INT(2),
  PRIMARY KEY (ID_personnage),
  FOREIGN KEY (ID_COMPETENCE) REFERENCES COMPETENCE
  );

--Création table Statistique avec jonction--
CREATE TABLE  STATISTIQUE (
  ID_statistique INT(3) NOT NULL,
  VITALITE int(3) NOT NULL,
  ENDURANCE int(2) NOT NULL,
  FORCE int(2)NOT NULL,
  AGILITER int(2)NOT NULL,
  VIGUEUR int(2)NOT NULL,
  INTELLIGENCE int(2)NOT NULL,
  MANA int(2)NOT NULL,
  ID_personnage int(3),
  PRIMARY KEY (ID_statistique),
  FOREIGN KEY (ID_personnage) REFERENCES PERSONNAGE
  );

--Création table Equipement avec double jonction--
CREATE TABLE  EQUIPEMENT (
  ID_EQUIPEMENT INT(3) NOT NULL,
  TETE VARCHAR(50),
  TORSE VARCHAR(50),
  GANT VARCHAR(50),
  ARME VARCHAR(50),
  JAMBIERE VARCHAR(50),
  PIED VARCHAR(50),
  ID_personnage int(3),
  ID_BONUS int(3),
  PRIMARY KEY (ID_EQUIPEMENT),
  FOREIGN KEY (ID_personnage) REFERENCES PERSONNAGE,
  FOREIGN KEY (ID_BONUS) REFERENCES BONUS_STAT
  );
  
--Création d'enregistrement dans Compétence--
insert into COMPETENCE VALUES (01,'VOLER','INVISIBLE');
insert into COMPETENCE VALUES (02,'TELEPORTATION','BOULE DE FEU');
insert into COMPETENCE VALUES (03,'CHARGE','COUP DE BOUCLIER');
insert into COMPETENCE VALUES (04,'TIR RAPIDE','FURTIVITE');
insert into COMPETENCE VALUES (05,'TOURBILOL','COUP DE HACHE');

--Création d'enregistrement dans Personnage--
insert into PERSONNAGE VALUES (01,'Krakoss633','GUERRIER', 12,05 );
insert into PERSONNAGE VALUES (02,'SEB','ARCHER', 2,04 );
insert into PERSONNAGE VALUES (03,'JANNA','MAGE', 99,02 );
insert into PERSONNAGE VALUES (04,'GUTS','PALADIN', 54,03 );
insert into PERSONNAGE VALUES (05,'Bilbon','VOLEUR', 12,01 );

--Création d'enregistrement dans Statistique--
insert into STATISTIQUE VALUES (01, 120, 20, 34, 24, 32, 03,15 ,01 );
insert into STATISTIQUE VALUES (02, 999, 99, 99, 99, 99, 99, 99,02 );
insert into STATISTIQUE VALUES (03, 540, 25, 15, 35, 35, 99,99 ,03);
insert into STATISTIQUE VALUES (04, 640, 32, 64, 26, 42, 16,20 ,04);
insert into STATISTIQUE VALUES (05, 100, 16, 12, 24, 13, 12,10 ,05 );

--Création d'enregistrement dans Bonus_Stat--
insert into BONUS_STAT VALUES (01, 20, 12, 05, 10, 5, 00,00);
insert into BONUS_STAT VALUES (02, 30, 00, 00, 03, 20, 54,20);
insert into BONUS_STAT VALUES (03, 10, 16, 12, 24, 13, 12,10);

--Création d'enregistrement dans Equipement--
insert into EQUIPEMENT VALUES (01,'Le Chapeau','Le Torse','Les Super Gants','LE MARTEAU QUI TAPE',NULL,'Les Jolies Bottes',01,01);
insert into EQUIPEMENT VALUES (02,'chapeau du MJ','Torse du MJ','Gants du MJ', 'Arc du MJ','JAMBIERE du MJ','Bottes du MJD',02,02);
insert into EQUIPEMENT VALUES (03,'Chapeau du mage','Robe de magicienne cheater', 'Gant d_intellect','Le Baton Supreme', 'Collant de mana','Talon de puissance',03,03);

--Afficher la vitalité d'un personnage--
SELECT STATISTIQUE.VITALITE           
FROM STATISTIQUE, PERSONNAGE                        
WHERE PERSONNAGE.NOM = 'Krakoss633' and STATISTIQUE.ID_personnage = PERSONNAGE.ID_personnage; 

--Afficher les compétences de la classer voleur--
SELECT COMPETENCE.type_pouvoir, COMPETENCE.type_attribut
FROM COMPETENCE, PERSONNAGE
WHERE PERSONNAGE.CLASSE = 'VOLEUR'  and COMPETENCE.ID_COMPETENCE = PERSONNAGE.ID_COMPETENCE;

--Afficher les équipements équipper--
SELECT EQUIPEMENT.TETE, EQUIPEMENT.TORSE, EQUIPEMENT.GANT, EQUIPEMENT.ARME, EQUIPEMENT.JAMBIERE, EQUIPEMENT.PIED
FROM EQUIPEMENT, PERSONNAGE
WHERE PERSONNAGE.ID_personnage  and EQUIPEMENT.ID_personnage = PERSONNAGE.ID_personnage;

--Afficher le nom des personnages capables de voler--
SELECT PERSONNAGE.NOM 
FROM PERSONNAGE, COMPETENCE
WHERE COMPETENCE.type_pouvoir = 'VOLER' and COMPETENCE.ID_COMPETENCE = PERSONNAGE.ID_COMPETENCE;

--Afficher le nom des personnages capable de voler et avec 280 PV--
SELECT PERSONNAGE.NOM
FROM PERSONNAGE, COMPETENCE, STATISTIQUE
WHERE COMPETENCE.type_pouvoir = 'VOLER' and STATISTIQUE.VITALITE = 280 and COMPETENCE.ID_COMPETENCE = PERSONNAGE.ID_COMPETENCE and STATISTIQUE.ID_personnage = PERSONNAGE.ID_personnage;

--Afficher les stats bonus de force donner par les équipements sur un personnage--
SELECT BONUS_STAT.FORCE
FROM BONUS_STAT, EQUIPEMENT, PERSONNAGE
WHERE PERSONNAGE.NOM = 'Krakoss633' and BONUS_STAT.ID_BONUS = EQUIPEMENT.ID_BONUS and EQUIPEMENT.ID_personnage = PERSONNAGE.ID_personnage;



  