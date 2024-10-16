# import random 

# #Fonction qui va choisir un mot de manière aléatoire dans une liste. 
# def generation_mot():
#     liste_mot = ["python", "ordinateur", "javascript", "voiture", "labyrinthe", "pyramide", "spectacle", "crocodile", "bibliotheque", "parachute", "papillon", "mystère","parapluie", "chocolat", "vacances", "minecraft", "pokemon", "chat", "chien", "oiseau", "fleur", "livre"]
#     mot = random.choice(liste_mot)
#     return mot 

# def pendu():
#     mot_a_trouver = generation_mot()










##################################################################################################


import random

# Générer un mot aléatoire à partir d'une liste existante
def generer_mot_existants():
    liste_de_mots = ["python", "ordinateur", "javascript", "voiture", "labyrinthe", "pyramide", "spectacle", "crocodile", "bibliotheque", "parachute", "papillon", "mystère","parapluie", "chocolat", "vacances", "minecraft", "pokemon", "chat", "chien", "oiseau", "fleur", "livre"]
    mot = random.choice(liste_de_mots)
    return mot

# Fonction principale du jeu du pendu
def jeu_du_pendu():
    # Générer un mot aléatoire
    mot_a_deviner = generer_mot_existants().lower()  # Mot à deviner (en minuscule)
    lettres_devinees = []  # Lettres devinées jusqu'à présent
    essais_restants = 8  # Nombre d'essais autorisés
    mot_cache = ['_' for _ in mot_a_deviner]  # Le mot caché avec des '_'

    print("Bienvenue dans le jeu du pendu !")
    print("Devine le mot : ", ' '.join(mot_cache))

    # Boucle du jeu
    while essais_restants > 0:
        lettre = input("\nDevine une lettre : ").lower()

        # Vérifier si l'utilisateur a déjà essayé cette lettre
        if lettre in lettres_devinees:
            print(f"Tu as déjà deviné la lettre '{lettre}'.")
            continue

        # Ajouter la lettre à la liste des lettres devinées
        lettres_devinees.append(lettre)

        # Vérifier si la lettre est dans le mot
        if lettre in mot_a_deviner:
            print(f"Bien joué ! La lettre '{lettre}' est dans le mot.")
            # Révéler la lettre dans le mot caché
            for index, char in enumerate(mot_a_deviner):
                if char == lettre:
                    mot_cache[index] = lettre
        else:
            essais_restants -= 1
            print(f"Oops ! La lettre '{lettre}' n'est pas dans le mot. Il te reste {essais_restants} essais.")

        # Afficher l'état actuel du mot
        print(' '.join(mot_cache))

        # Vérifier si le joueur a trouvé tout le mot
        if '_' not in mot_cache:
            print("\nFélicitations ! Tu as trouvé le mot :", mot_a_deviner)
            break
    else:
        print("\nDommage, tu as perdu ! Le mot était :", mot_a_deviner)

# Lancer le jeu
jeu_du_pendu()