#If you want to do something with every item in the list, you can use a for loop.

my_list = [1,9,3,8,5,7]

for number in my_list:                   #Le for loop ici va chercher tout les chiffres de la liste pour les multipliés par 2.
  print (2 * number)

  ########################################################################################

start_list = [5, 3, 1, 2, 4]               #Création de liste
square_list = []                           #Création d'une seconde liste

for number in start_list:                  #For loop qui va chercher les nombres de la première liste
  square_list.append(number ** 2)          #On va ranger le résultat du for loop du **2 dans la seconde liste avecle .append()
square_list.sort()                         #Et avec le .sort() on organise la liste pour la mettre dans l'odre.

print  (square_list)