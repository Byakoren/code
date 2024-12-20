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


# import random

# def generate_phone_numbers(quantity):
#   phone_numbers = []
#   for _ in range(quantity):
#     number = "0" + str(random.choice([6, 7]))
#     for _ in range(8):
#       number += str(random.randint(0, 9))
#     phone_numbers.append(number)
#   return phone_numbers

# numbers = generate_phone_numbers(30)
# print(numbers)


# lloyd = {
#   "name": "Lloyd",
#   "homework": [90.0, 97.0, 75.0, 92.0],
#   "quizzes": [88.0, 40.0, 94.0],
#   "tests": [75.0, 90.0]
# }
# alice = {
#   "name": "Alice",
#   "homework": [100.0, 92.0, 98.0, 100.0],
#   "quizzes": [82.0, 83.0, 91.0],
#   "tests": [89.0, 97.0]
# }
# tyler = {
#   "name": "Tyler",
#   "homework": [0.0, 87.0, 75.0, 22.0],
#   "quizzes": [0.0, 75.0, 78.0],
#   "tests": [100.0, 100.0]
# }

# # Add your function below!
# def average(numbers):
#   total = sum(numbers)
#   total = float(total)
#   return total / len(numbers)

# def get_average(student):
#   homework = average(student["homework"])
#   quizzes = average(student["quizzes"])
#   tests = average(student["tests"])
#   total = homework * 0.1 + quizzes * 0.3 + tests * 0.6 
#   return total

# def get_letter_grade(score):
#   if score >= 90:
#     return "A"
#   elif score >= 80:
#     return "B"
#   elif score >= 70:
#     return "C"
#   elif score >= 60:
#     return "D"
#   else:
#     return "F"


# def get_class_average(class_list):
#   results = []
#   for student in class_list:
#     results.append(get_average(student))
#   return average(results)

# print(get_class_average([lloyd, alice, tyler]))

from random import randint

board = []

for x in range(0, 5):
  board.append(["O"] * 5)

def print_board(board):
  for row in board:
    print(" ".join(row))

print_board(board)

def random_row(board):
  return randint(0, len(board) - 1)

def random_col(board):
  return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)

for turn in range(4):
  print("Turn", turn + 1)
  guess_row = int(input("Guess Row: "))
  guess_col = int(input("Guess Col: "))

  if guess_row == ship_row and guess_col == ship_col:
    print("Congratulations! You sank my battleship!")  
    break
  else:
    if guess_row not in range(5) or \
      guess_col not in range(5):
      print("Oops, that's not even in the ocean.")
    elif board[guess_row][guess_col] == "X":
      print("You guessed that one already." )
    else:
      print("You missed my battleship!")
      board[guess_row - 1][guess_col - 1] = "X"
    print_board(board)
    if turn == 3:
      print("Game Over")

def digit_sum(n):
  total = 0
  for digit in str(n): 
    total += int(digit)
  return total

print(digit_sum(1234))