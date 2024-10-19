import random

def input_int(msg):
    while True:
        try:
            input_val = int(input(msg))
            return input_val
        except:
            print("Ce n'est pas un entier, essaye encore.")

print("Bienvenue dans ce premier système de jeu de Byakoren ! ")
print("Tu vas pouvoir soit deviner soit me faire deviner un nombre entre 1 et 100. ")

choix = 0
point_de_vie = 10

while choix < 1 or choix > 2 :
    choix = input_int("Si tu veux deviner un nombre tape '1', si tu veux m'en faire deviner un tape '2'. Si tu veux quitter tape '3'  ")

    if choix == 1 : 
        nombre = random.randint(1, 100)
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
    elif choix == 2 :
        mini = 1
        maxi = 100
        while point_de_vie != 0 :
            guess = (maxi + mini) // 2
            print(f"Il me reste {point_de_vie} essai(s).")
            nb_user = input(f"Je propose le nombre {guess}, si ton nombre est supérieur écris 'plus', inférieur écris 'moins', si c'est le bon écris 'égale'. ")
            if nb_user == "plus" :
                point_de_vie -= 1
                mini = guess
            elif nb_user == "moins" :
                point_de_vie -= 1
                maxi = guess
            elif nb_user == "égale" :
                print("Let's go j'ai gagné !")
                break
            else :
                print("Connais pas ce mot recommence.")
    elif choix == 3 :
        break