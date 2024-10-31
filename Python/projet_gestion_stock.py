def input_int(msg):
    while True:
        try:
            input_val = int(input(msg))
            return input_val
        except:
            print("Ce n'est pas un entier, essaye encore.")

def display_stock():
    if not stock:
        print("Ton stock est vide")
    else:
        for i in range(len(produit)):
            print(f"- {produit[i]} : {stock[i]} en stock")
            
def add_product():
    product = input("Entrer un nouveau produit : ").lower()
    if product in produit :
        index = produit.index(product)
        stock[index] = input_int(f"Quelle est le nouveau montant de {product} ? ")
        print(f"Le nouveau montant de {product} est {stock[index]}")
    else :
        produit.append(product) 
        stock.append(input("Entrer la quantité : "))
        print(f"{stock[-1]} {produit[-1]} ajouter à la liste.")  

def verif():
    produit_recherche = input("Quel est le nom du produit à vérifier : ").lower()
    if produit_recherche in produit :
        index = produit.index(produit_recherche)
        print(f"Le produit '{produit_recherche}' est en stock avec une quantité de {stock[index]}")
    else :
        print(f"Le produit '{produit_recherche}' n'est pas en stock. ")

def del_list():
        nom_product = input("Quel est le produit à supprimer ? ").lower()
        if nom_product in produit :
            index = produit.index(nom_product)
            del produit[index]
            del stock[index]
            print(f"Le produit {nom_product} a été supprimé. ")
        else :
            print("Ce produit n'existe pas.")

def trie():
    global produit, stock 
    produits_stock = list(zip(produit, stock))
    produits_stock.sort() 
    produit, stock = zip(*produits_stock)
    produit = list(produit)
    stock = list(stock)
    print("Produits triés par ordre alphabétique.")

def menu():
    print("Affichage du menu : ")
    print("Taper '1' pour afficher les produits en stock.")
    print("Taper '2' ajouter un produit ou modifier la quantité.")
    print("Taper '3' pour vérifier si un produit est en stock.")
    print("Taper '4' pour supprimer un produit du stock.")
    print("taper '5' pour trier les produits par ordre alphabétique.")
    print("Taper 'quitter' pour quitter.")
    return input(" ")

stock = []
produit = []

while True :
    choix = menu()
    print()
    if choix == "1" :
        display_stock()
    elif choix == "2" :
        add_product()
    elif choix == "3" :
        verif()
    elif choix == "4" :
        del_list()
    elif choix == "5" :
        trie()
    elif choix == "quitter" :
        print("Bonne journée !")
        break
    else :
        print("Je n'ai pas compris votre demande, merci de recommencer.")
    print()
    input("Appuyez sur entrée pour continuer.")
