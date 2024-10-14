zoo_animals = ["pangolin", "cassowary", "Dragon", "Tiger"] #Création d'une liste 

zoo_animals[3] = "cat" #Modification du 4ème élèment de la liste 

#print (zoo_animals[2] + zoo_animals[3]) #Addition de deu élèments d'une même liste, dans le cas de chiffre = addition, string =colle les lettres.

zoo_animals.append("Panda") #Permet d'ajouter un nouvel élèment dans la liste.

list_length = len(zoo_animals) #Création d'une nouvelle variable qui va contenir le nombre de chose dans la liste zoo_animals.

print ("There are %d items in the suitcase." % (list_length)) #Commande permettant de remplacer le %d dans le string par notre variable.
print (zoo_animals)

##########################################################################################################""

animals = ["aardvark", "badger", "duck", "emu", "fennec fox"]

duck_index = animals.index("duck")        #Permet de mettre dans la variable le numéro de la position de duck dans la liste (ici 2)

animals.insert(duck_index,"cobra")       #Permet d'insérrer le string "cobra" avant duck dans la liste (donc en position 2)

print (animals) 