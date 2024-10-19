# # prenom = input("Quel est ton prénom? ") 
# # nom = input("Quel est tom nom? ")
# # print ("Bonjour", prenom , nom ,"enchanté !")

# ###################################################################################

# #Calcul périmètre d'un rectangle

# # largeur = float(input("Quel est la largeur du rectangle? "))
# # longueur = float(input("Quel est la longueur du rectanle? "))       
# # perimetre = (longueur + largeur)*2
# # print("le périmètre de votre rectangle est : ", perimetre)

# ###################################################################################

# # age = int(input("Quel est ton âge ?"))

# # if age <= 0 :
# #   print("Ce n'est pas possible, recommence.")
# # elif age < 18 :
# #   print("Tu es mineur.")
# # else :
# #   print ("Tu es majeur.")

# ###################################################################################

# # nb_1 = float(input("Donne moi un premier nombre : "))
# # nb_2 = float(input("Donne moi un deuxième nombre : "))

# # print("Le résultat de l'addition de tes deux nombres est :", nb_1 + nb_2)
# # print("Le résultat de la soustraction de tes deux nombres est :", nb_1 - nb_2)
# # print("Le résultat de la multiplication de tes deux nombres est :", nb_1 * nb_2)

# # if nb_1 == 0 or nb_2 == 0 :
# #   print("une division par 0 sera toujours égale à 0.")
# # else :
# #   print("Le résultat de la division  de tes deux nombres est :", nb_1 / nb_2)

# ###################################################################################

# # A = int(input("Donne moi un premier nombre entier."))
# # B = int(input("Donne moi un second nombre entier."))
# # C = None

# # print(A)
# # print(B)

# # C = A
# # A = B
# # B = C
# # print(A)
# # print(B)

# ###################################################################################

# # A= float(input("Donne moi un nombre négatif et je vais te donner son absolue "))
# # if A < 0 :
# #   print(abs(A))
# # else :
# #   print("Ce n'est pas un nombre negatif")

# ###################################################################################

# # n = int(input("Donne moi un nombre entier."))

# # resultat = n

# # for x in range(n) : 
# #     resultat += x
# # print(resultat)

# ###################################################################################


# # n = int(input("Donne moi un nombre entier."))
# # resultat = 0
# # x = n

# # while(x > 0) :
# #   resultat += x
# #   x -= 1

# # print(resultat)

# ###################################################################################


# # while True :
# #   n = int(input("Donne moi un nombre"))
# #   if n == 0 :
# #     break
  
# ###################################################################################

# import random    #Importer random pour l'utiliser pour générer des listes.

# def genere_liste(taille, min,max ):                                #Fonction faisant la génération de la liste.
#   return [random.randint(min, max) for _ in range(taille)]

  
# def rechercher_entier(tableau, entier_recherche):
#   #Parcourir le tableau pour chercher l'entier
#   for i in range(len(tableau)):
#     if tableau[i] == entier_recherche:
#       return i              #retourner l'indice si l'entier est trouvé
  
#   return len(tableau)   #Si l'entier n'est pas trouvé, retourner la taille du tableau

# #on donne les caracs de la liste.
# taille_liste = 15
# min = 1
# max = 200

# tableau = genere_liste(taille_liste, min, max)          #met la liste dans la variable tableau et l'affiche sans le trier.
# print("Tableau généré (non trié): ", tableau)

# tableau.sort()
# print("Tableau trié :", tableau)               #affichage du tableau trié.

# entier_recherche = int(input("Entrez l'entier à rechercher : "))    #Commande pour rechercher un entier précis.

# resultat = rechercher_entier(tableau, entier_recherche)
# print("Résultat: ", resultat)                                #ça te donne la position de l'entier dans la liste.


