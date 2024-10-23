def input_float(msg):
    while True:
        try:
            input_val = float(input(msg))
            return input_val
        except:
            print("Ce n'est pas un nombre, essaye encore.")


number = input_float("Quel est la table de multiplication que tu cherches ? ")

"""Script permettant de générer une table de multiplication et de les mettres dans une liste."""
liste = []

for i in range(11):
    result = round(number * i,1)
    liste.append(f"{number} * {i} = {result}")

for i in liste:
    print(i) 

"""Le même script mais en version focntion."""

def table_multiplication(nombre):
    liste = []

    for i in range(11):
        result = round(nombre * i, 1)
        liste.append(f"{nombre} * {i} = {result}")

    for i in liste:
        print(i)

table_multiplication(input_float("Quelle est la table de multiplication que tu veux ? "))