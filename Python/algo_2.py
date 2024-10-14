copie = int(input("Quel est votre nombre de copie"))

if copie <= 10 :
    prix = copie * 0.2
elif copie <= 30 :
    prix = 10 * 0.2 + (copie - 10) * 0.15
else :
    prix = 10 * 0.2 + 20 * 0.15 + (copie - 30) * 0.1

print ("Votre prix sera de ", prix)