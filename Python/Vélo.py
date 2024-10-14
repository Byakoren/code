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