# $note_1 = [float] (Read-Host "Donne moi la première note ")
# $note_2 = [float] (Read-Host "Donne moi la deuxième note ")
# $note_3 = [float] (Read-Host "Donne moi la troisième note ")
# $note_4 = [float] (Read-Host "Donne moi la quatrième note ")
# $note_5 = [float] (Read-Host "Donne moi la cinquième note ")

# $moyenne = [math]::Round(($note_1 + $note_2 + $note_3 + $note_4 + $note_5) / 5 , 2)

# if ($moyenne -ge 10) {
#     Write-Host "La moyenne de tes notes est de : $moyenne tu es admis."
# } else {
#     Write-Host "La moyenne de tes notes est de : $moyenne tu es naze. "
# }

# ###########################################################################################

# [string]$Var1 = "yopmail"
# [string]$var2 = "centre de formation"

# [bool]$var3 = ("Faux")
# $PSVersionTable
# [float]$var4 = 42.5476

# [bool]$var5 = $false

# [int]$var6 = 1011010

# $nom = Read-Host "Quel est ton nom?"
# $prenom = Read-Host "Quel est ton prénom?"

# $MesProcess = Get-Process System

# $Var1
# $var2
# $var3
# $var4
# $var5
# $var6
# $nom
# $prenom
# $MesProcess

# ##################################################################################################
# #1) Demander à l'utilisateur de saisir un nombre1 puis un Nombre2 et lui afficher le produit des deux nombres.

# [float]$nb_1 = Read-Host "Donne moi un premier nombre "
# [float]$nb_2 = Read-Host "Donne moi un duxième nombre "
# [float]$produit = $nb_1 + $nb_2
# Write-Host "Le produit de tes deux nombres est $produit"

# ###################################################################################################################
# #2) Demander à l'utilisateur de saisir le prix d'un sandwich , puis de saisir le prix d'une bouteille
# #d'eau. Lui demander combien de fois par mois il achète ce repas. Afficher le total dépensé par an.


# [float]$prix_sandwich = Read-Host "Quel est le prix de ton sandwich ? "
# [float]$prix_bouteille = Read-Host "Quel est le prix de ta bouteille ?"
# [float]$nb_achat = Read-Host "Combien de fois par mois tu achètes ce repas ?"

# [float]$prix_total = ($prix_sandwich + $prix_bouteille) * $nb_achat * 12

# Write-Host "Ton total dépensé sur l'année pour ce repas est de $prix_total €"


# #3) Demander à L'utilisateur le prix d'un repas à la cantine. Afficher si il est vrai que prix d'un repas
# #à la cantine est moins chère que ce qu'il dépense par jour à la question 2

# [float]$prix_repas = Read-Host "Quel est le prix d'un repas à la cantine ?"

# if ($prix_repas -lt ($prix_sandwich + $prix_bouteille)) {
#     Write-Host "Un repas à la cantine serait moins chère que ton sandwich et ta boisson habituelle"
# } else {
#     Write-Host "Tu peux continuer d'acheter ton sandwich c'est moins chère."
# }

# ####################################################################################################################
# #4)Demander à l' utilisateur son nom et son prénom, lui construire un login de type :
# #Première lettre du prénom, point, le nom complet , puis @jaimepowershell.yopmail
# #Ex pour Mr Luc Dupont --------> L.Dupont@jaimepowershell.yopmail

# [string]$nom = Read-Host "Quel est ton nom ?"
# [string]$prenom = Read-Host "Quel est ton prénom ?"

# [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"

# Write-Host  "Ton e-mail sera : $mail"

# ######################################################################################################################
# #5)Demander à l' utilisateur son nom et changer toutes les lettre "e" par des "a"

# [string]$nom = Read-Host "Quel est ton nom ?"

# $nom.replace('e', 'a')

# #####################################################################################################################
# #1) Créer un tableau à 1 dimension de longueur 464 qui contient les nombre 100 à 563

# $tableau=@(100..563) 

# #2) Afficher le contenu de la 7eme case du tableau

# $tableau[6]

# #3) Modifier le contenu de la 7eme case remplacer sa valeur par "AZERTY"

# $tableau[6] = "AZERTY"


# #4) Recréer un tableau de longueur 463 qui contient la même chose que le tableau précèdent sauf le contenu de la 7eme case
# $MonTabFinal = $tableau[100..105+107..563]

# $MonTabFinal.Length

# ########################################################################################################


# # 5) Faire un tableau à 2 dimensions qui contient les noms de 5 jeux vidéos et de leur note attribuée par jeuxvideo.com

# $tableau_note=@('God of War (2018)',20),('Zelda BOTW',20),('Baldurs gate 3',19),('Horizon Forbiden west',19),('The Witcher 3',19)
# $tableau_note[1]

# $tableau_couleur=@("Rouge","#FF0000"),("Bleu","#0000FF"),("Vert","#008000")
# $tableau_couleur

##################################################################################################################
#1) Mettre dans une variable $Maliste1 le nom et le statut de tous les services.
# $MesServices = get-service
# $MesServices | Format-List

# $MesServices

# 2) Mettre dans une variable $Maliste2 le nom et le statut de tous les services en cours
# $MesServices = get-service
# $mesServices | where-object {$_.status -match "running"}
# $MesServices

# 3) Mettre dans une variable $Maliste3 le nom et le statut de tous les services en cours et dont le nom
# commence par un "w"

# $MesServices = get-service
# $MesServices | Where-Object { ($_.status -match "running") -and ($_.name -like "w*") }

# 6 ) Mettre dans une variable $MesCommandes la liste des commandes PowerShell disponible (Getcommand) et donner leur nombre

# $MesCommandes = Get-Command
# $MesCommandes.count

# 7) Regarder le nom des attributs(propriétés, méthodes, etc..) possible. Et Afficher uniquement le nom des Propriétés .

# $MesServices = Get-Service 
# $MesServices | Get-Member | Where-Object {$_.MemberType -like 'Property'} | Select-Object Name

# 8 ) Afficher les commandes qui sont en version 3 ou 3.x et dont le nom commence par "wr"

# $MesCommandes = Get-Command
# $MesCommandes | Where-Object {($_.Version -match 3) -and ($_.name -like "w*") }


# 1 ) Écrire un script qui demande à l'utilisateur de taper un nombre entre 1 et 10 , tant qu'il ne tape
# pas le chiffre 7 le programme continu de lui demander de rentrer un nombre.

# [int]$nb_user = 0
# [int]$nb_user = Read-Host "Devine un nombre entre 1 et 10"

# while ($nb_user -ne 7) {   
#     [int]$nb_user = Read-Host "Essaye encore, devine un nombre entre 1 et 10"
# }

# Write-Host "GG, tu as deviné le bon nombre!"


# 2) Écrire un script qui demande à l'utilisateur de rentrer toutes les notes d'un élève dans un tableau
# et que tant que l'utilisateur ne saisi pas le mot clef "FIN" le script continu de lui demander et
# d'ajouter des notes au tableau.

$Tableau_note = @()

[float]$note_user = Read-Host "Donne moi une note entre 0 et 20, je vais les stocker dans un tableau. Si tu veux quitter écris 100"

while ($note_user -ne 100) {
    $Tableau_note += $note_user
    [float]$note_user = Read-Host "Donne moi une note entre 0 et 20, je vais les stocker dans un tableau. Si tu veux quitter écris 100"
    
}

$Tableau_note 
