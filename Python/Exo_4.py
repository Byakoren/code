"""Exercice 3 : Jeu du nombre mystère.
Ecrire un programme Python qui tire une valeur aléatoire x entre 0 et 100 et qui demande à l'utilisateur de deviner cette valeur.
L'algorithme répond à chaque fois si la valeur est plus grande, plus petite ou égale à la valeur à deviner. Un compteur incrémenté à 
chaque passage donnera le nombre de tours qui ont été nécessaires pour trouver le nombre mystère."""

# def input_int(msg):
#     while True:
#         try:
#             input_val = int(input(msg))
#             return input_val
#         except:
#             print("Ce n'est pas un entier, essaye encore.")

# import random 

# liste_nombre = list(range(0, 101))
# nombre = random.choice(liste_nombre)

# essai = 0
# nombre_user = -1

# while nombre != nombre_user:
#     nombre_user = input_int("Devine un nombre entre 0 et 100. ")
#     essai += 1
#     if nombre_user < nombre :
#         print("Ton nombre est inférieur à mon nombre. ")
#     elif nombre_user > nombre :
#         print("Ton nombre est supérieur à mon nombre. ")
#     else :
#         print("Bravo mon nombre était bien", nombre, "Tu as mis", essai, "essai(s) pour trouver. ")


"""Exercice 4 : Factorielle itérative.
Ecrire un programme Python qui détermine la factorielle d'un entier n (donné par l'utilisateur) avec les deux types de boucles. Votre
programme doit permettre à l'utilisateur de choisir la boucle à utiliser puis réalise le traitement nécessaire en conséquence.
Votre programme doit permettre aussi l'affichage de l'évolution de la valeur de la factorielle à chaque itération."""

def input_int(msg):
    while True:
        try:
            input_val = int(input(msg))
            return input_val
        except:
            print("Ce n'est pas un entier, essaye encore.")

entier = input_int("Donnc moi un nombre entier et je vais te donner sa factorielle. ")
total = 1
A = -1

while A < 0 or A > 1 :
    A = input_int("Si tu veux utiliser la boucle for écris 0, pour la boucle While écris 1. ")
    if A == 0 :
        for i in range(0, entier):
            print(total, "X", entier - i, "=", end=" ")
            total *= entier - i
            print(total)
    elif A == 1 :
        while entier != 0 :
            print(total, "X", entier, "=", end=" ")
            total *= entier 
            print(total)
            entier -= 1

print("Le résultat Factorielle de ton entier est",total)