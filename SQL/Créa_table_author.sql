CREATE TABLE AUTHOR (
  ID_AUTHOR INT(4) NOT NULL,
  NAME VARCHAR(40),
  FIRST_NAME VARCHAR(40),
  NATIONALITY VARCHAR(20),
  BIRTH_YEAR INT(4),
  PRIMARY KEY (ID_AUTHOR)
);

CREATE TABLE BOOK (
  ID_BOOK INT(5) NOT NULL,
  TITLE VARCHAR(100),
  RELEASE_DATE INT(4),
  PAGE_NUMBER INT(4),
  DESCRIPTION VARCHAR(200),
  ID_AUTHOR INT(4),
  PRIMARY KEY (ID_BOOK),
  FOREIGN KEY (ID_AUTHOR) REFERENCES AUTHOR(ID_AUTHOR)
 );
 
 ###############################################################################################################

 INSERT into AUTHOR values (0001, 'Miura' , 'Kentaro' , 'Japonaise' , 1966)
 #
 INSERT into BOOK values (00412, 'Berserk Tome 1' , 1990 , 224, 'Un triangle amoureux qui tourne mal (Ne pas montrer aux enfants) ' , 0001)

 #################################################################################################################

SELECT * FROM BOOK;

SELECT * FROM AUTHOR;

####################################################################

CREATE TABLE  IMMEUBLE (
  ID_IMMEUBLE INT(10) NOT NULL,
  NB_ETAGE INT(2),
  ADRESSE VARCHAR(255),
  ASCENSEUR BOOL,
  DATECREA DATE,
  PRIMARY KEY (ID_IMMEUBLE)
);

CREATE TABLE  APPART (
  ID_APPART INT(10) NOT NULL,
  ETAGE INT(2),
  NB_PIECE INT(2),
  SUPERFICIE INT(3),
  ID_IMMEUBLE INT(10) NOT NULL,
  PRIMARY KEY (ID_APPART),
  FOREIGN KEY (ID_IMMEUBLE) REFERENCES IMMEUBLE
);
-----------------------------------------------------------------------
-----------------------------------------------------------------------
DROP TABLE DEMO ;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
ALTER TABLE APPART RENAME TO APPARTEMENT ;

ALTER TABLE APPARTEMENT ADD NB_FENETRE int(2);
-----------------------------------------------------------------------
-----------------------------------------------------------------------
insert into immeuble values (0000000001, 34 , '02 rue bidule 75014' , true , 1993) ;
insert into immeuble values (0000000002, 45 , '04 rue bidule 75014' , true , 1996) ;
insert into immeuble values (0000000003, 14 , '06 rue bidule 75014' , true , 1999) ;
insert into immeuble values (0000000004, 666 , '08 rue bidule 75014' , false , 1992) ;
insert into immeuble values (0000000005, 6 , '10 rue bidule 75014' , true , 1986) ;
insert into immeuble values (0000000006, 16 , '12 rue bidule 75014' , true , 1975) ;
insert into immeuble values (0000000007, 3 , '14 rue bidule 75014' , true , 1963) ;
SELECT * FROM immeuble ;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
insert into APPARTEMENT VALUES ( 1 , 1 , 4 , 92 , 0000000001 , 8) ;
insert into APPARTEMENT VALUES ( 24 , 12 , 3 , 68 , 0000000002 , 5) ;
insert into APPARTEMENT VALUES ( 12 , 1 , 5 , 120 , 0000000003 , 8) ;
insert into APPARTEMENT VALUES ( 666 , 666 , 666 , 666 , 0000000004 , 666) ;
insert into APPARTEMENT VALUES ( 8 , 3 , 4 , 94 , 0000000005 , 6) ;
insert into APPARTEMENT VALUES ( 23 , 11 , 2 , 44 , 0000000006 , 4) ;
insert into APPARTEMENT VALUES ( 3 , 3 , 3  , 66 , 0000000007 , 5) ;
Select * from APPARTEMENT
-----------------------------------------------------------------------
-----------------------------------------------------------------------
select * 
from IMMEUBLE
Inner join APPARTEMENT on Immeuble.ID_IMMEUBLE = APPARTEMENT.ID_IMMEUBLE
-----------------------------------------------------------------------
-----------------------------------------------------------------------
update APPARTEMENT
set nb_fenetre = 9
WHERE id_appart = 666 ;
SELECT * FROM APPARTEMENT
-----------------------------------------------------------------------
-----------------------------------------------------------------------
select nb_etage , datecrea from IMMEUBLE WHERE ascenseur = 1

Select * from IMMEUBLE WHERE ascenseur = 0  AND datecrea == 1900

Select * from IMMEUBLE WHERE ascenseur = 0  OR datecrea BETWEEN 1900 AND 1990
-----------------------------------------------------------------------
-----------------------------------------------------------------------
update APPARTEMENT
set nb_piece = 6 , etage = 60 , superficie = 120 , nb_fenetre = 9
WHERE id_appart = 666 ;

SELECT * FROM APPARTEMENT
-----------------------------------------------------------------------
-----------------------------------------------------------------------
SELECT IMMEUBLE.adresse , IMMEUBLE.ID_IMMEUBLE
FROM IMMEUBLE, APPARTEMENT
WHERE superficie = 120 and APPARTEMENT.ID_IMMEUBLE = IMMEUBLE.ID_IMMEUBLE

SELECT IMMEUBLE.datecrea  -- Les infos qu'on cherche (date de création de l'immeuble)
FROM IMMEUBLE, APPARTEMENT -- depuis les tables immeuble et appartement 
WHERE nb_piece = 3 and APPARTEMENT.ID_IMMEUBLE = IMMEUBLE.ID_IMMEUBLE -- En cherchant ceux qui ont un nombre de pièce = à 3 en faisant la jointure des deux tables avec l'ID