def input_int(msg):
    while True:
        try:
            input_val = int(input(msg))
            return input_val
        except:
            print("Ce n'est pas un entier, essaye encore.")

def display_tache():
    if not to_do_list : 
        print("Tu n'as pas de tâche. ")
    else :
        index = 0
        for task in to_do_list :
            index += 1
            print(f"Tâche n°{index}: {task}")

def add_list():
    to_do_list.append(str(input("Entrer une nouvelle tâche : ")))
    print(f"{to_do_list[-1]} ajouter à la liste.")

def del_list():
    try :
        numero_tache = input_int("Quel est le numéro de la tâche à supprimer? ")
        del to_do_list[numero_tache - 1]
        print(f"La tâche {numero_tache} a été supprimé. ")
    except :
        print("Cette tâche n'existe pas.")

def completion_task():
    try : 
        numero_tache = input_int("Quel est la tâche à valider ? ")
        to_do_list[numero_tache - 1] += ": Tâche validé."
        print(f"La tâche {numero_tache} a été validé !")
    except :
        print("Cette tâche n'existe pas.")

def menu():
    print("Affichage du menu : ")
    print("Taper '1' pour afficher la to-do-list.")
    print("Taper '2' pour ajouter une tâche.")
    print("Taper '3' pour supprimer une tâche.")
    print("Taper '4' pour valider une tâche.")
    print("Taper 'quitter' pour quitter.")
    return input(" ")


to_do_list = []
prenom = input("Quel est ton prénom? ")
print(f"Bienvenue {prenom} dans ta to-do-list !")

while True :
    choix = menu()
    if choix == "1" :
        display_tache()
    elif choix == "2" :
        add_list()
    elif choix == "3" :
        del_list()
    elif choix == "4" :
        completion_task()
    elif choix == "quitter" :
        break
    else :
        print("Je n'ai pas compris votre demande, merci de recommencer.")
    



