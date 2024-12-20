from random import randint

# GENERATION DE L'OCEAN EN COURS
def generate_board(size):
    return [["~"] * size for _ in range(size)]

# ON IMPRIME L'OCEAN ICI
def print_board(board):
    print("  " + " ".join(str(i + 1) for i in range(len(board[0]))))  # Numérotation des colonnes
    for idx, row in enumerate(board):
        print(str(idx + 1) + " " + " ".join(row))  # Numérotation des lignes

# ON CONSTRUIT DES BATEAUX ICI
def generate_ships(num_ships, size):
    ships = []
    while len(ships) < num_ships:
        ship = (randint(0, size - 1), randint(0, size - 1))
        if ship not in ships:
            ships.append(ship)
    return ships

# LE JEU
def play_game():
    size = 9
    board = generate_board(size)
    num_ships = 3
    ships = generate_ships(num_ships, size)
    successful_hits = 0
    misses = 0

# TUTO
    print("\nTUTORIEL :")
    print("1. Le plateau est une grille de 9x9 cases.")
    print("2. Devinez les positions des navires en entrant les coordonnées (1-9).")
    print("3. Si vous êtes proche d'un navire, un indice vous sera donné.")
    print("4. Vous pouvez quitter la partie en entrant 0.")

# Choix difficulté
    print("\nChoisissez la difficulté :")
    print("1. Facile   (20 coups)")
    print("2. Moyen    (15 coups)")
    print("3. Difficile (10 coups)")
    print("")

    difficulty = ("")

    while difficulty != "facile" or difficulty != "moyen" or difficulty != "difficile":
      difficulty = input("Entrez votre choix (Facile/Moyen/Difficile) : ").lower()
      if difficulty == "facile":
          max_turns = 20
          break
      elif difficulty == "moyen":
          max_turns = 15
          break
      elif difficulty == "difficile":
          max_turns = 10
          break
      else :
          print("Mauvais choix, essaye encore.")

# Début jeux
    print("\nBienvenue dans la bataille navale capitaine !")
    print_board(board)

    for turn in range(max_turns):
        print(f"\n===== TOUR {turn + 1}/{max_turns} =====")
        coups_restants = max_turns - turn 
        print(f"Il vous reste {coups_restants} coup{'s' if coups_restants > 1 else ''}.")
        print(f"Tirs réussis : {successful_hits} | Tirs ratés : {misses}")
        print("")
        try:
            guess_col = int(input("Devine la colonne (1-9, ou 0 pour quitter) : ")) - 1
            
            if guess_col == -1:
                confirm = input("Êtes-vous sûr de vouloir quitter ? (oui/non) : ").lower()
                if confirm == "oui":
                    print("Vous avez quitté la partie.")
                    return
                else:
                    print("Retour à la bataille !")
                    continue

            guess_row = int(input("Devine la rangée (1-9) : ")) - 1

            if guess_row not in range(size) or guess_col not in range(size):
                print("")
                print("Oops, Ce n'est pas dans notre océan.")
                continue

            if (guess_row, guess_col) in ships:
                print("")
                print("Touché !")
                ships.remove((guess_row, guess_col))
                board[guess_row][guess_col] = "S"
                print_board(board)
                successful_hits += 1
                if not ships:
                    print("")
                    print(f"Bravo, capitaine ! Vous avez remporté la bataille en {turn + 1} tours !")
                    break
            else:
                if board[guess_row][guess_col] == "X":
                    print("")
                    print("Tu l'as déjà essayé.")
                else:
                    print("")
                    print("Loupé !")
                    board[guess_row][guess_col] = "X"
                    misses += 1

                    # Indice de proximité
                    closest_ship = min(ships, key=lambda s: abs(s[0] - guess_row) + abs(s[1] - guess_col))
                    distance = abs(closest_ship[0] - guess_row) + abs(closest_ship[1] - guess_col)
                    if distance == 1:
                        print("")
                        print("Tu es très proche (1 case) !")
                    elif distance <= 3:
                        print("")
                        print("Tu es proche (3 cases ou moins) !")
                    else:
                        print("")
                        print("Tu es loin. (maybe your ship is in another ocean)")
                print("\nÉtat actuel de votre bataille :")
                print("")
                print_board(board)

        except ValueError:
            print("Entre un nombre valide.")

    if ships:
        print("Dommage, capitaine ! La bataille est perdue.")
        print("")
        print("Les navires restants étaient en :", [(r + 1, c + 1) for r, c in ships])
        for ship in ships:
            board[ship[0]][ship[1]] = "S"
        print_board(board)

# PETITE BOUCLE POUR REJOUER
while True:
    play_game()
    replay = input("Veux-tu rejouer ? (oui/non) : ").lower()
    if replay != "oui":
        print("Merci d'avoir joué ! À bientôt.")
        break
    