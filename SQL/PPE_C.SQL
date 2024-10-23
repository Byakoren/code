--Supprimer la table demo--
DROP TABLE DEMO;

--Création table CONTRAT_SERVICE--
CREATE TABLE CONTRAT_SERVICE (
  ID_contrat INT(3) NOT NULL, 
  date_expiration date,
  nom_sav VARCHAR(25),
  num_sav int(10),
  type_ VARCHAR(30),
  PRIMARY KEY (ID_contrat)
);

--Création table CATEGORIE--
CREATE TABLE CATEGORIE (
  ID_categorie INT(3) NOT NULL, 
  nom VARCHAR(50),
  PRIMARY KEY (ID_categorie)
);

--Création table PROMOTION--
CREATE TABLE PROMOTION (
  ID_promotion INT(2) NOT NULL,
  annee int(4),
  nom VARCHAR(25),
  option_ VARCHAR(10),
  PRIMARY KEY (ID_promotion)
);

--Création table MATERIEL--
CREATE TABLE  MATERIEL (
  ID_materiel INT(4) NOT NULL,
  statut VARCHAR(10),
  ID_contrat int(3),
  ID_categorie INT(3),
  PRIMARY KEY (ID_materiel),
  FOREIGN KEY (ID_contrat) REFERENCES CONTRAT_SERVICE,
  FOREIGN KEY (ID_categorie) REFERENCES CATEGORIE
  );

--Création table STAGIAIRE--
  CREATE TABLE  STAGIAIRE (
  ID_stagiaire INT(3) NOT NULL,
  nom VARCHAR(25),
  prenom VARCHAR(20),
  mail VARCHAR(50),
  num_tel int(10),
  ID_promotion INT(2),
  PRIMARY KEY (ID_stagiaire),
  FOREIGN KEY (ID_promotion) REFERENCES PROMOTION
  );

--Création table PRET
  CREATE TABLE  PRET (
  ID_materiel INT(4) NOT NULL,
  ID_stagiaire INT(3) NOT NULL,
  date_pret date,
  date_retour date,
  duree_en_jour int(3),
  PRIMARY KEY (id_materiel, ID_stagiaire),
  FOREIGN KEY (ID_materiel) REFERENCES MATERIEL,
  FOREIGN KEY (ID_stagiaire) REFERENCES STAGIAIRE
  );

--Création des enregistrements--
insert into PROMOTION VALUES (1,2024,'BTS GPME','');
insert into PROMOTION VALUES (2,2024,'BTS CG','');
insert into PROMOTION VALUES (3,2024,'BTS CO','');
insert into PROMOTION VALUES (4,2024,'BTS Banque','');
insert into PROMOTION VALUES (5,2024,'BTS SIO','SLAM');
insert into PROMOTION VALUES (6,2024,'BTS SIO','SISR');


insert into STAGIAIRE VALUES (1,'Martin','Lucas','lucas.martin@gefor.fr',0744574603,1);
insert into STAGIAIRE VALUES (2,'Dubois','Chloé','chloe.dubois@gefor.fr',0708866955,1);
insert into STAGIAIRE VALUES (3,'Lefevre','Maxime','maxime.lefevre@gefor.fr',0614952068,1);
insert into STAGIAIRE VALUES (4,'Bernard','Sophie','sophie.bernard@gefor.fr',0718726638,1);
insert into STAGIAIRE VALUES (5,'Moreau','Julien','julien.moreau@gefor.fr',0618279767,1);

insert into STAGIAIRE VALUES (6,'Robert','Camille','camille.robert@gefor.fr',0612607780,2);
insert into STAGIAIRE VALUES (7,'Petit','Thomas','thomas.petit@gefor.fr',0725151234,2);
insert into STAGIAIRE VALUES (8,'Roux','Manon','manon.roux@gefor.fr',0754803197,2);
insert into STAGIAIRE VALUES (9,'Simon','Alexandre','alexandre.simon@gefor.fr',0770474784,2);
insert into STAGIAIRE VALUES (10,'Laurent','Emma','emma.laurent@gefor.fr',0756477759,2);

insert into STAGIAIRE VALUES (11,'Girard','Antoine','antoine.girard@gefor.fr',0663735705,3);
insert into STAGIAIRE VALUES (12,'Durand','Léa','lea.durand@gefor.fr',0781599558,3);
insert into STAGIAIRE VALUES (13,'Dupont','Nicolas','nicolas.dupont@gefor.fr',0695515259,3);
insert into STAGIAIRE VALUES (14,'Fournier','Claire','claire.fournier@gefor.fr',0671522816,3);
insert into STAGIAIRE VALUES (15,'Richard','Matthieu','matthieu.richard@gefor.fr',0661490425,3);

insert into STAGIAIRE VALUES (16,'Lefebvre','Elodie','elodie.lefebvre@gefor.fr',0689089657,4);
insert into STAGIAIRE VALUES (17,'Caron','David','david.caron@gefor.fr',0761532086,4);
insert into STAGIAIRE VALUES (18,'Blanchard','Julie','julie.blanchard@gefor.fr',0718063102,4);
insert into STAGIAIRE VALUES (19,'Garnier','Vincent','vincent.garnier@gefor.fr',0615403603,4);
insert into STAGIAIRE VALUES (20,'Faure','Sabrina','sabrina.faure@gefor.fr',0796245178,4);

insert into STAGIAIRE VALUES (21,'Lambert','Romain','romain.lambert@gefor.fr',0717462367,5);
insert into STAGIAIRE VALUES (22,'Mercier','Pauline','pauline.mercier@gefor.fr',0749249622,5);
insert into STAGIAIRE VALUES (23,'Leroy','Yannick','yannick.leroy@gefor.fr',0633159006,5);
insert into STAGIAIRE VALUES (24,'Dupuis','Marion','marion.dupuis@gefor.fr',0718638604,5);
insert into STAGIAIRE VALUES (25,'Tessier','Grégoire','gregoire.tessier@gefor.fr',0767597534,5);

insert into STAGIAIRE VALUES (26,'Muller','Laura','laura.muller@gefor.fr',0797687103,6);
insert into STAGIAIRE VALUES (27,'Renaud','Jonathan','jonathan.renaud@gefor.fr',0734326844,6);
insert into STAGIAIRE VALUES (28,'Perrin','Caroline','caroline.perrin@gefor.fr',0796669144,6);
insert into STAGIAIRE VALUES (29,'Vidal','Kevin','kevin.vidal@gefor.fr',0608913990,6);
insert into STAGIAIRE VALUES (30,'Nicolas','Céline','celine.nicolas@gefor.fr',0733910078,6);


insert into CATEGORIE VALUES (1,'PC Fixe');
insert into CATEGORIE VALUES (2,'PC Portable');
insert into CATEGORIE VALUES (3,'Souris');
insert into CATEGORIE VALUES (4,'Clavier');
insert into CATEGORIE VALUES (5,'Casque micro');
insert into CATEGORIE VALUES (6,'Ecran');
insert into CATEGORIE VALUES (7,'DDE');
insert into CATEGORIE VALUES (8,'Lôt Cables');
insert into CATEGORIE VALUES (9,'Les trois premiers tomes de Berserk parce que pourquoi pas');
insert into CATEGORIE VALUES (10,'Les cheveux de Mehdi parce que je les veux aussi');


insert into CONTRAT_SERVICE VALUES (1,'2024-11-30','LG',0210812124,'Contrat de maintenance ');
insert into CONTRAT_SERVICE VALUES (2,'2024-12-30','SAMSUNG',0136957796,'Contrat de maintenance');
insert into CONTRAT_SERVICE VALUES (3,'2025-02-28','LOGITECH',0282069952,'Contrat de maintenance');
insert into CONTRAT_SERVICE VALUES (4,'2025-04-30','LENOVO',0164814114,'Contrat de maintenance');
insert into CONTRAT_SERVICE VALUES (5,'2025-05-30','ASUS',0207771124,'Contrat de maintenance');
insert into CONTRAT_SERVICE VALUES (6,'2025-08-30','MiCROSOFT',0179540519,'Contrat de maintenance');


insert into MATERIEL VALUES (1,'disponible',NULL,1);
insert into MATERIEL VALUES (2,'disponible',NULL,2);
insert into MATERIEL VALUES (3,'disponible',NULL,3);
insert into MATERIEL VALUES (4,'disponible',NULL,4);
insert into MATERIEL VALUES (5,'disponible',NULL,5);
insert into MATERIEL VALUES (6,'disponible',NULL,6);
insert into MATERIEL VALUES (7,'disponible',NULL,7);
insert into MATERIEL VALUES (8,'disponible',NULL,8);
insert into MATERIEL VALUES (9,'disponible',NULL,9);
insert into MATERIEL VALUES (10,'disponible',NULL,10);
insert into MATERIEL VALUES (11,'disponible',5,1);
insert into MATERIEL VALUES (12,'disponible',5,2);
insert into MATERIEL VALUES (13,'disponible',3,3);
insert into MATERIEL VALUES (14,'en réparation',2,4);
insert into MATERIEL VALUES (15,'en réparation',2,6);

insert into PRET VALUES (1,7,'2024-09-12','2024-12-01',80);
insert into PRET VALUES (3,7,'2024-09-12','2024-12-01',80);
insert into PRET VALUES (4,7,'2024-09-12','2024-12-01',80);
insert into PRET VALUES (5,7,'2024-09-12','2024-12-01',80);
insert into PRET VALUES (8,7,'2024-09-12','2024-12-01',80);
insert into PRET VALUES (2,12,'2024-10-01','2024-10-02',2);
insert into PRET VALUES (9,26,'2024-09-06','2024-09-26',20);
insert into PRET VALUES (10,4,'2024-10-03','2025-05-12',221);
insert into PRET VALUES (7,1,'2024-10-20','2024-12-01',42);
insert into PRET VALUES (2,23,'2024-10-01','2024-10-21',20);

--Création des reqûetes SQL--

--Donnez la liste du matériel en état : disponible--
SELECT CATEGORIE.nom
FROM MATERIEL, CATEGORIE
WHERE statut = 'disponible'  and CATEGORIE.ID_categorie = MATERIEL.ID_categorie;

--Donnez la liste de tous le matérie--
SELECT CATEGORIE.nom From CATEGORIE;

--Donnez le nom de la personne qui a le matériel numero 003--
Select STAGIAIRE.nom, STAGIAIRE.prenom
FROM STAGIAIRE, PRET, MATERIEL
WHERE MATERIEL.ID_materiel = 3 and STAGIAIRE.ID_stagiaire = PRET.ID_stagiaire and PRET.ID_materiel = MATERIEL.ID_materiel;
