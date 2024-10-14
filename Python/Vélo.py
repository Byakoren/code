def input_int(msg):
    while True:
        try:
            input_val = int(input(msg))
            return input_val
        except:
            print("Ce n'est pas un entier, essaye encore.")

def input_float(msg):
    while True:
        try:
            input_val = float(input(msg))
            return input_val
        except:
            print("Ce n'est pas un nombre, essaye encore.")

heure_debut = input_int("Quel est l'heure de début de la location du velo (sous format 24h)? ")
heure_fin = input_int("Quel est l'heure de fin de la location de vélo (sous format 24h)? ")
durer_location = heure_fin - heure_debut

heure_1 = 0
heure_2 = 0

if heure_debut < 0 or heure_debut > 24 or heure_fin < 0 or heure_fin > 24 :
    print("L'heure de début et de fin doivent être comprise ans les 24heures.")
elif heure_debut == heure_fin :
    print("Tu ne peux pas louer le vélo 1journée complète ou plus.")
elif heure_debut > heure_fin :
    print("L'heure de début doit êter inférieur à celle de fin.")
else:
    for heure in range(heure_debut, heure_fin):
        if 0 <= heure < 7 or 17 <= heure < 24:            
            heure_1 += 1
        else: 
            heure_2 += 1
    print("Vous avez loué votre vélo pendant: ", durer_location, "heures.")
   
    if heure_1 != 0 :
        print(heure_1, "heure(s) au tarif horaire de 1.0 euro(s)")
    if heure_2 != 0 :
        print(heure_2, "heure(s) au tarif horaire de 2.0 euro(s) ")
    prix_location = float(heure_1 + heure_2 * 2)
    print("Le prix de votre location sera de:", prix_location, "euro(s).")


# #__________________________________________________________________________________________________
# #Constant:
# TARIF_1 = 2
# TARIF_2 = 1
# #Variable:
# heure_deb = 0
# heure_fin = 0
# duree_tarif_1 = 0
# duree_tarif_2 = 0
# prix_total = 0
# #____________________________________________________________________________
# #Error message:
# MSG_0_24 = "Les heures doivent être comprises entre 0 et 24!"
# MSG_DEB_FIN_EGALE = "Attention! l'heure de fin est identique à l'heure de début."
# MSG_DEB_APR_FIN = "Attention! le début de la location est aprés la fin..."

# #____________________________________________________________________________
# #Message:

# MSG_HEUR_DEB_INPUT = "Donnez l’heure de début de la location (un entier) : "
# MSG_HEUR_FIN_INPUT = "Donnez l’heure de fin de la location (un entier) : "
# MSG_LOUER_PENDANT = "Vous avez loué votre vélo pendant: "
# MSG_AU_TARIF = " heure(s) au tarif horaire de "
# MSG_TARIF_TOTAL = "Le montant total à payer est de "
# #MSG_TOTAL_TARIF_1= (f"{MSG_LOUER_PENDANT}\n{duree_tarif_2}{MSG_AU_TARIF}{TARIF_2} euro(s)")
# #MSG_TOTAL_TARIF_2= (f"{MSG_LOUER_PENDANT}\n{duree_tarif_1}{MSG_AU_TARIF}{TARIF_1} euro(s)")
# #MSG_TARIF_TOTAL = (f"Le montant total à payer est de {prix_total}")
 
# def int_test(heure_deb, heure_fin):
# 	"""Test si une valeur entrée par l'utilisateur est 
# 	est un nombre entier"""

#     #Cet fonction pouvait être intégré directement au bloc heure_deb_fin()
#     #Toutefois pour une question d'évolution du code dans de prochaine version
#     #j'ai décidé de la gardé autonome.Si nous souhaitons implémenter des valeurs
#     #décimal par éxemple et les tester...
# 	if heure_deb.isdigit() and heure_fin.isdigit():
# 		return True
# 	else:
# 		return False

# def heure_deb_fin():
# 	"""Demande a l'utilisateur d'entrée l'heure 
# 	de début et de fin de la location."""
# 	while True:
# 		heure_deb = input(MSG_HEUR_DEB_INPUT)
# 		heure_fin = input(MSG_HEUR_FIN_INPUT)
		
# 		if int_test(heure_deb,heure_fin):
# 			pass
# 			heure_deb = int(heure_deb)
# 			heure_fin = int(heure_fin)
# 		else:
# 			print(MSG_0_24)
# 			continue
	
	
# 		if test_heure(heure_deb,heure_fin):
		
# 			return heure_deb,heure_fin
# 		else:
# 			continue 

# 	return False	

# def test_heure(heure_deb, heure_fin):
# 	"""Si la durée totale de location est
# 	infèrieur est supérieur à 24h affiche 
# 	un méssage et retourne False.Si l'heure
# 	début est égale a l'heure de fin,retourne False
# 	et affiche un méssage a l'utilisateur"""

#     #Bloc de débuggage:
# 	#print(f"{heure_deb}>{heure_fin}")
# 	#print(heure_deb<heure_fin)
# 	#print(type(heure_deb))
# 	#print(type(heure_fin))

# 	if heure_deb > heure_fin:
# 		print(MSG_DEB_APR_FIN) 
# 		return False		
	
# 	if heure_deb == heure_fin:
# 		print(MSG_DEB_FIN_EGALE)
# 		return False	

# 	return True		


# def calc_tarif(heure_deb,heure_fin):
# 	"""Calcul tarif total location"""
# 	#Définie les variables suivantes comme 
# 	#faisant partie du scope global et non pas
# 	#du scope local de 'calc_tarif'.

# 	global duree_tarif_1
# 	global duree_tarif_2
# 	global duree_total
# 	global prix_tarif_1
# 	global prix_tarif_2
# 	global prix_total
	
# 	#Reinitialisaton:
# 	#Les variables doivent être réinitialisé
#  	#afin de ne pas ajouter les valeurs du calcul
# 	#précedent. 
# 	duree_tarif_1 = 0
# 	duree_tarif_2 = 0
# 	duree_total = 0

# 	prix_tarif_1 = 0
# 	prix_tarif_2 = 0
# 	prix_total = 0
		
	
# 	#print débuggage:
# 	#print(heure_deb,heure_fin)
	
# 	#Les contrôles par conditions suivantes établissent les valeurs de chacunes des durées
#     # de location en fonction des horaires données par l'utilisateur.
# 	if 0 < heure_deb < 7:
# 		duree_tarif_2 = 7 - heure_deb
# 		print("1 duree_tarif_2 = 7 - heure_deb",duree_tarif_2)
	

# 	if 17 < heure_fin <= 24:
# 		duree_tarif_2 += heure_fin - 17

# 		#print débuggage
# 		#print("2 duree_tarif_2 += heure_fin - 17",duree_tarif_2)

# 	if 7 > heure_deb and heure_fin > 17:
# 		duree_tarif_1 += 10 

# 		#print débuggage
# 		#print("3 duree_tarif_1 += 10", duree_tarif_1)  	

# 	if 7 <= heure_deb <= 17 and 7 <= heure_fin <= 17:
# 		duree_tarif_1 = heure_fin - heure_deb

# 		#print débuggage
# 		#print("4 duree_tarif_1 = heure_fin - heure_deb",duree_tarif_1)

# 	if 7 <= heure_deb <= 17 and heure_fin > 17:
# 		duree_tarif_1 += 17 - heure_deb

# 		#print débuggage
# 		#print("5 duree_tarif_1 += 17 - heure_deb",duree_tarif_1)
	
# 	if heure_deb < 7 and  heure_fin < 17:
# 		duree_tarif_1 += heure_fin - 7
		
# 		#print débuggage
# 		#print("6 duree_tarif_1 += 17 - heure_deb",duree_tarif_1)
	
# 	if heure_deb < 7 and heure_fin <= 17:
# 		duree_tarif_1 = heure_fin - 7
# 		#print("7 duree_tarif_1 += heure_fin - 7",duree_tarif_1)
    
#     #Les lignes suivantes calcules les prix des durées respectives
#     #es tarifs 1 et 2.Puis la duree total et le tarif total.
# 	prix_tarif_1 = duree_tarif_1 * TARIF_1
# 	prix_tarif_2 = duree_tarif_2 * TARIF_2
	
# 	prix_total = prix_tarif_1 + prix_tarif_2
# 	duree_total = duree_tarif_1 + duree_tarif_2
# 	#print(duree_tarif_1,duree_tarif_2,duree_total,prix_tarif_1,prix_tarif_2,prix_total)

# 	return duree_tarif_1,duree_tarif_2,duree_total,prix_tarif_1,prix_tarif_2,prix_total



# def main():
# 	"""Point d'entrée du programme.Ici est définie
# 	le cours de déroulement du script"""

# 	#Boucle tant que vrai.Sera stopé si l'utilisateur le souhaite.
# 	#Sinon une entrée sera demandé(cet fonction n'est pas encore implémenté).
# 	while True:
		
# 		heure_deb,heure_fin = heure_deb_fin()
# 		calc_tarif(heure_deb,heure_fin)
		
# 		#Débugage:
# 		#print(duree_tarif_1,duree_tarif_2,duree_total,prix_tarif_1,prix_tarif_2,prix_total)
        
#         #Les affichages varies en fonction des heures et tarifs à afficher.
#         #Si le tarif_1 n'est pas présent dans les heures de location réclamé par
#         #l'utilisateur alors rien n'est affiché pour celui ci.

# 		if prix_tarif_1 == 0:

# 			print(MSG_LOUER_PENDANT)
# 			print(f"{duree_tarif_2}{MSG_AU_TARIF} {TARIF_2}")
# 			print(f"{MSG_TARIF_TOTAL} {prix_total}euro(s)")

# 		elif prix_tarif_2 == 0:
# 			print(MSG_LOUER_PENDANT)
# 			print(f"{duree_tarif_1}{MSG_AU_TARIF} {TARIF_1}")
# 			print(f"{MSG_TARIF_TOTAL} {prix_total} euro(s)")

# 		else:
		
# 			print(MSG_LOUER_PENDANT)
# 			print(f"{duree_tarif_1}{MSG_AU_TARIF}{TARIF_1}euro(s)")
# 			print(f"{duree_tarif_2}{MSG_AU_TARIF}{TARIF_2}euro(s)")
# 			print(f"{MSG_TARIF_TOTAL}{prix_total}euro(s)")
			

		

				
# #Ici nous indiquons à python que nous souhaitons éxecuter 
# #la fonction main() en point d'entrée.
# if __name__ == "__main__":
# 	main()	
