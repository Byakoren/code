#Fonction à ne pas commenter pour faire fonctionner les codes dessous.

def input_float(msg):
    while True:
        try:
            input_val = float(input(msg))
            return input_val
        except:
            print("Ce n'est pas un nombre, essaye encore.")

def input_int(msg):
    while True:
        try:
            input_val = int(input(msg))
            return input_val
        except:
            print("Ce n'est pas un entier, essaye encore.")

##################################################################################################################
"""Exercice 1"""

note_1 = input_float("Donne moi une première note. ")
note_2 = input_float("Donne moi une deuxième note. ")
note_3 = input_float("Donne moi une troisième note. ")
note_4 = input_float("Donne moi une quatrème note. ")
note_5 = input_float("Donne moi une cinquième note. ")

moyenne = round((note_1 + note_2 + note_3 + note_4 + note_5)  / 5, 2)

print("Votre moyenne est de :", moyenne)

if moyenne < 10:
    print("Tu n'es pas admis.")
else :
    print("Tu es admis. ")


######################################################################################################
"""Exercice 2"""

valeur = input_int("Donne moi un nombre entier.")
pair = 0
impair = 0

for x in range(1, valeur) : 
    if x%2 == 0 :
        pair += 1
    else : 
        impair += 1

print("Tu as", pair, "nombre pair entre 1 et ton nombre.")
print("Tu as", impair, "nombre impair entre 1 et ton nombre.")

########################################################################################################
"""Exercice 3"""

import random 

liste_nombre = list(range(1, 101))
nombre = random.choice(liste_nombre)

point_de_vie = 10

for essai  in range(point_de_vie):
    nombre_user = input_int("Devine le nombre entre 1 et 100. ")
    if nombre_user < nombre:
        point_de_vie -= 1
        print("Ton nombre est inférieur à mon nombre. ")
        if point_de_vie != 0 :
            print("Il te reste", point_de_vie, "essai. ")
        else :
            print("Tu n'as plus d'essai, perdu !")
    elif nombre_user > nombre:
        point_de_vie -= 1
        print("Ton nombre est supérieur à mon nombre. ")
        if point_de_vie != 0 :
            print("Il te reste", point_de_vie, "essai. ")
        else :
            print("Tu n'as plus d'essai, perdu !")
    else:
        print("Bravo, tu as gagné !")
        break
    
