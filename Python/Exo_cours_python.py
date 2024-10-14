#Code permettant de calculer la moyenne d'une personne et de la lui donner.

# nom = input("Quel est ton nom ? ")
# prenom = input("Quel est ton prénom ? ")
# math = float(input("Note en math : "))
# anglais = float(input("Note en anglais : "))
# info = float(input("Note en info : "))
# promotion = int(input("Dans quelle année t'es ? "))
# moyenne = round((math + anglais + info) / 3, 2)       

# print("Le type de nom est : ", type(nom))
# print("Le type de prenom est : ", type(prenom))
# print("Le type de math est : ", type(math))
# print("Le type de anglais est : ", type(anglais))
# print("Le type de info est : ", type(info))
# print("Le type de promotion est : ", type(promotion))
# print("Le type de moyenne est : ", type(moyenne))


# print("L'étudiant", nom, prenom, "de la promotion", promotion, "a une moyenne de", moyenne)

##################################################################################################

#Code permettant de calculer le nombre de minute écouler du mois en entrant les infos de la date et l'heure du jour

# jour = int(input("Donne moi le jour du mois : "))
# heure = int(input("Donne moi l'heure : "))
# minute = int(input("Donne moi les minutes : "))

# minutes_jour = 24 * 60
# minutes_total = (jour - 1) * minutes_jour
# minutes_total += heure * 60
# minutes_total += minute

# print("Voici le nombre de minute écoulées depuis le début du mois :", minutes_total)

##################################################################################################

#Code permettant de calculer l'année de naissance d'une personne me donnant son âge en 2024

# import datetime
# from datetime import datetime 

# # #Invoque datetime.now().year et attribue ca valeur retour a la variable 'anne_en_cours'
# annee_en_cours = int(datetime.now().year)

# #Boucle continuant tant que l'utilisateur n'a pas rentré une valeur numérique positive.
# while True:
#     #collecte l'age de l'utilisateur
#     age = input("\n\tQuel est votre âge? (entrer 'q'/'quit' pour quitter...) ")
    
#     #Si il entre 'quit','q'... le programme s'arrête.
#     if age in ("q","quit","Q","QUIT"):
#         quit()
    
#     #Dans le cas ou l'utilisateur entre une autre valeur qu'un nombre la boucle reviens au début
#     if age.isdigit():
#         age = int(age)
        
#         break
#     else:
#         #Le message s'affiche si une valeur différente d'un nombre est entrée.
#         print("\n\tUne erreur est survenu.\n\tEntrer une valeur numérique ou bien positive...")
#         pass

# #Calcule l'annee de naissance en effectuant une soustraction.
# annee_naissance = annee_en_cours - age 
# #Affiche un méssage accompagnée de l'année de méssage.
# print(f"\nVous ête née en {annee_naissance}.") 

###################################################################################################################



# while True :
#     a = (input("Entrez la premiere  valeur : "))
#     b = (input("Entrez la deuxieme  valeur : "))
#     c = (input("Entrez la troisieme valeur : "))

#     if a.isdigit() and b.isdigit() and c.isdigit() : 
#         a = int(a)
#         b = int(b)
#         c = int(c)
#         break

#     else :
#         print("Ce n'est pas une valeur recommence.")


# print("Les valeurs entrées sont : a =" , a , ", b =" , b , " et c =" , c)
# print("Permutation: a ==> b, b ==> c, c ==> a")

# i = b
# b = a
# a = c
# c = i

# print("Les valeurs permutées sont : a =", a, ", b =", b, " et c = ", c)

########################################################################################################

# from random import randint

# num = randint(1 , 100)
# print(num)
# if num < 50 :
#     print("Pile")
# else :
#     print("Face")

##########################################################################################################

# import random

# piece = ["Pile", "Pile", "Face"]

# resultat = random.choice(piece)

# print(resultat)

######################################################################################################

# nombre = int(input("Donne moi un nombre "))

# if nombre > 0 :
#     if nombre % 2 == 0 :
#         print("Ton nombre est positif et est pair.")
#     else :
#         print("ton nombre est positif et impair.")
# elif nombre < 0 :
#     if nombre % 2 == 0 :
#         print("Ton nombre est négatif et pair.")
#     else :
#         print("Ton nombre est négatif et impair.")
# else :
#     print("Ton nombre est 0.")

############################################################################################################################

# x = float(input("Donne moi un nombre réel "))

# if (2 <= x < 3) or (0 < x <= 1) or ( -10 <= x <= -2) :
#     print("Ton nombre", x , "appartient à l'ensemble I.")
# else :
#     print("Ton nombre", x , "n'appartient pas à l'ensemble I.")

###########################################################################################################################

# BASE = 4
# fromage = 800.0 
# eau = 2 
# ail = 2
# pain = 400

# nb_convives = int(input("Combien il y aura de personne? "))

# nouvelle_quantite_fromage = (fromage * nb_convives / BASE)
# nouvelle_quantite_eau = (eau * nb_convives / BASE)
# nouvelle_quantite_ail = (ail * nb_convives / BASE)
# nouvelle_quantite_pain = (pain * nb_convives / BASE)

# print("Pour", nb_convives, "il vous faudra : ")
# print(f"- {nouvelle_quantite_fromage:.1f} gr de fromage") 
# print(f"- {nouvelle_quantite_pain:.1f} gr de pain")
# print(f"- {nouvelle_quantite_ail} gousse d'ail")
# print(f"- {nouvelle_quantite_eau:.1f} dl d'eau") 

#######################################################################################

# age = int(input("Quel est voter âge ? "))

# if age < 18 :
#     print("Tu es mineur.")
# elif age <= 65 :
#     print("Tu es majeur.")
# else :
#     print("Vous êtes senior.")

######################################################################################
n = 20

sommePaire = 0
sommeTotale = 0
for i in range(1, n + 1) :
    if (i % 2 == 0) :
        sommePaire = sommePaire + i
    
    sommeTotale = sommeTotale + 1

print(sommeTotale)
print(sommePaire)