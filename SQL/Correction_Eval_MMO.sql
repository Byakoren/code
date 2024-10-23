CREATE TABLE Categorie (
ID_categorie INT NOT NULL,
Nom VARCHAR,
PRIMARY KEY (ID_categorie)
);

insert into Categorie values (1,"Epée Longue");
insert into Categorie values (2,"casque");
insert into Categorie values (3,"gant");

CREATE TABLE Type_Perso (
  ID_Type_Perso INT NOT NULL,
  Nom VARCHAR,
  Pouvoir VARCHAR,
  attribut VARCHAR,
  PRIMARY KEY (ID_Type_Perso)
);
insert into Type_Perso values (1,"VOLEUR","VOLER","INVISIBLE");
insert into Type_Perso values (2,"MAGE","SORTILEGE","BOULLE DE FEU");
insert into Type_Perso values (3,"TROLL","EFFRAYER","PEAU DUR");

CREATE TABLE Personnage (
  ID_Perso INT NOT NULL,
  Nom VARCHAR,
  force INT,
  agilite INT,
  intelligence INT,
  PVie_Max INT,
  PVie INT,
  PEndu_Max INT,
  PEndu INT,
  ID_Type_Perso INT NOT NULL,
  PRIMARY KEY (ID_Perso),
  FOREIGN KEY (ID_Type_Perso) REFERENCES Type_Perso (ID_Type_Perso)
);

insert into Personnage values (1,"Krakos633",115,80,50,300,280,200,170,1);
insert into Personnage values (2,"Mika44",80,70,60,200,180,100,70,2);
insert into Personnage values (3,"Leduc26",200,200,100,400,400,300,300,1);


CREATE TABLE Item (
  ID_Item INT NOT NULL,
  Bonus_For INT,
  Bonus_Agi INT,
  Bonus_Int INT,
  Equipe BOOL,
  ID_Perso INT NOT NULL,
  ID_categorie INT NOT NULL,
  PRIMARY KEY (ID_Item),
  FOREIGN KEY (ID_categorie) REFERENCES Categorie (ID_categorie),
  FOREIGN KEY (ID_Perso) REFERENCES Personnage (ID_Perso)
);

insert into Item values (1,10,0,10,1,1,1);
insert into Item values (2,15,10,0,1,1,2);
insert into Item values (3,30,0,10,1,1,3);
insert into Item values (4,30,0,10,1,2,1);




--------------------------------------------------------------

SELECT pvie_max from Personnage WHERE nom = "Krakos633" ;

SELECT Personnage.nom FROM Personnage,Type_Perso WHERE Type_Perso.pouvoir = "VOLER" 
and Type_Perso.id_type_perso = Personnage.id_type_perso ;

SELECT Personnage.nom FROM Personnage,Type_Perso WHERE Type_Perso.pouvoir = "VOLER" 
and Type_Perso.id_type_perso = Personnage.id_type_perso ;

SELECT Item.bonus_for from Item, Personnage WHERE Personnage.nom = "Krakos633" and Item.id_perso = Personnage.id_perso ;

SELECT Personnage.nom from Personnage,Item,Categorie where Categorie.nom = "Epée Longue"
AND Categorie.id_categorie = Item.id_categorie
AND Item.id_perso = Personnage.id_perso ;

