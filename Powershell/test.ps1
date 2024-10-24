$note_1 = [float] (Read-Host "Donne moi la première note ")
$note_2 = [float] (Read-Host "Donne moi la deuxième note ")
$note_3 = [float] (Read-Host "Donne moi la troisième note ")
$note_4 = [float] (Read-Host "Donne moi la quatrième note ")
$note_5 = [float] (Read-Host "Donne moi la cinquième note ")

$moyenne = [math]::Round(($note_1 + $note_2 + $note_3 + $note_4 + $note_5) / 5 , 2)

if ($moyenne -ge 10) {
    Write-Host "La moyenne de tes notes est de : $moyenne tu es admis."
} else {
    Write-Host "La moyenne de tes notes est de : $moyenne tu es naze. "
}

###########################################################################################


[string]$Var1 = "yopmail"                 # 1) Créer une variable Var1 qui contient la valeur "yopmail"
[string]$var2 = "centre de formation"     # 2) Créer une variable Var2 qui contient la valeur "centre de formation"
[bool]$var3 = ("Faux")                    # 3) Créer une variable Var3 de Type Bool et lui affecter la valeur "Faux"
$PSVersionTable                           # 4) Donner Votre version de PowerShell
[float]$var4 = 42.5476                    # 5) Créer une variable Var4 qui contient la valeur "42,5476"
[bool]$var5 = $false                      # 6) Créer une variable Var5 qui contient « False »
[int]$var6 = 1011010                      # 7) Créer une variable Var6 qui contient la valeur "1011010"
$nom = Read-Host "Quel est ton nom?"      # 8) Demander à l'utilisateur de saisir son nom , 
$prenom = Read-Host "Quel est ton prénom?"# puis son prénom
$MesProcess = Get-Process System          # 9) Stocker la liste des processus systeme dans une variables MesProcess
$Var1
$var2
$var3
$var4
$var5
$var6
$nom
$prenom
$MesProcess

##################################################################################################

#1) Demander à l'utilisateur de saisir un nombre1 puis un Nombre2 et lui afficher le produit des deux nombres.

[float]$nb_1 = Read-Host "Donne moi un premier nombre "
[float]$nb_2 = Read-Host "Donne moi un duxième nombre "
[float]$produit = $nb_1 + $nb_2
Write-Host "Le produit de tes deux nombres est $produit"


#2) Demander à l'utilisateur de saisir le prix d'un sandwich , puis de saisir le prix d'une bouteille
#d'eau. Lui demander combien de fois par mois il achète ce repas. Afficher le total dépensé par an.


[float]$prix_sandwich = Read-Host "Quel est le prix de ton sandwich ? "
[float]$prix_bouteille = Read-Host "Quel est le prix de ta bouteille ?"
[float]$nb_achat = Read-Host "Combien de fois par mois tu achètes ce repas ?"

[float]$prix_total = ($prix_sandwich + $prix_bouteille) * $nb_achat * 12

Write-Host "Ton total dépensé sur l'année pour ce repas est de $prix_total €"


#3) Demander à L'utilisateur le prix d'un repas à la cantine. Afficher si il est vrai que prix d'un repas
#à la cantine est moins chère que ce qu'il dépense par jour à la question 2

[float]$prix_repas = Read-Host "Quel est le prix d'un repas à la cantine ?"

if ($prix_repas -lt ($prix_sandwich + $prix_bouteille)) {
    Write-Host "Un repas à la cantine serait moins chère que ton sandwich et ta boisson habituelle"
} else {
    Write-Host "Tu peux continuer d'acheter ton sandwich c'est moins chère."
}


# 4)Demander à l' utilisateur son nom et son prénom, lui construire un login de type :
# Première lettre du prénom, point, le nom complet , puis @jaimepowershell.yopmail
# Ex pour Mr Luc Dupont --------> L.Dupont@jaimepowershell.yopmail

[string]$nom = Read-Host "Quel est ton nom ?"
[string]$prenom = Read-Host "Quel est ton prénom ?"

[string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"

Write-Host  "Ton e-mail sera : $mail"


# 5) Demander à l' utilisateur son nom et changer toutes les lettre "e" par des "a"

[string]$nom = Read-Host "Quel est ton nom ?"

$nom.replace('e', 'a')

#####################################################################################################################

# 1) Créer un tableau à 1 dimension de longueur 464 qui contient les nombre 100 à 563
$Tab1=@(100..563)

# 2) Afficher le contenu de la 7eme case du tableau
 $Tab1[6]

# 3) Modifier le contenu de la 7eme case remplacer sa valeur par "AZERTY"
$Tab1[6] = 'AZERTY'

# 4) Recréer un tableau de longueur 463 qui contient la même chose que le tableau précèdent sauf le contenu de la 7eme case
$NewTab = $Tab1[0..5+7..463]

# 5) Faire un tableau à 2 dimensions qui contient les noms de 5 jeux vidéos et de leur note attribuée par jeuxvideo.com
$Jeux = @{FIFA16 = 13 ; Footballmanager = 15.03 ; GTA5 = 17.5 ; HALO5 = 16.1 ; Battlefield = 15.6 }

# 6) donner la note du deuxième jeu de la liste
$Jeux.Footballmanager

# 7) faire un tableau avec le nom des couleurs primaires et leur code couleur html associé
$TabCouleurs1 = @{Rouge = "FF0000" ; Bleu = "0000FF" ; Jaune = "FFFF00" }

$TabCouleurs2=,("Couleur","Code")
$TabCouleurs2+=,("Rouge","FF0000")
$TabCouleurs2+=,("Bleu","0000FF")
$TabCouleurs2+=,("Jaune","FFFF00")

$MonTabCouleurs=@(0,0),(0,1),(1,0),(1,1),(2,0),(2,1)
$MonTabCouleurs[0][0]="Rouge"
$MonTabCouleurs[0][1]="FF0000"
$MonTabCouleurs[1][0]="Bleu"
$MonTabCouleurs[1][1]="0000FF"
$MonTabCouleurs[2][0]="Jaune"
$MonTabCouleurs[2][1]="FFFF00"
#################################################################################################################

# 1) Mettre dans une variable $Maliste1 le nom et le statut de tous les services.
$MesServices = get-service
$MesServices | Format-List

$MesServices

# 2) Mettre dans une variable $Maliste2 le nom et le statut de tous les services en cours
$MesServices = get-service
$mesServices | where-object {$_.status -match "running"}
$MesServices

# 3) Mettre dans une variable $Maliste3 le nom et le statut de tous les services en cours et dont le nom
# commence par un "w"

$MesServices = get-service
$MesServices | Where-Object { ($_.status -match "running") -and ($_.name -like "w*") }

# 6) Mettre dans une variable $MesCommandes la liste des commandes PowerShell disponible (Getcommand) et donner leur nombre

$MesCommandes = Get-Command
$MesCommandes.count

# 7) Regarder le nom des attributs(propriétés, méthodes, etc..) possible. Et Afficher uniquement le nom des Propriétés .

$MesServices = Get-Service 
$MesServices | Get-Member | Where-Object {$_.MemberType -like 'Property'} | Select-Object Name

# 8) Afficher les commandes qui sont en version 3 ou 3.x et dont le nom commence par "wr"

$MesCommandes = Get-Command
$MesCommandes | Where-Object {($_.Version -match 3) -and ($_.name -like "w*") }

###################################################################################################################

# 1) Écrire un script qui demande à l'utilisateur de taper un nombre entre 1 et 10 , tant qu'il ne tape
# pas le chiffre 7 le programme continu de lui demander de rentrer un nombre.

[int]$nb_user = 0
[int]$nb_user = Read-Host "Devine un nombre entre 1 et 10"

while ($nb_user -ne 7) {   
    [int]$nb_user = Read-Host "Essaye encore, devine un nombre entre 1 et 10"
}

Write-Host "GG, tu as deviné le bon nombre!"


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

# 3) Écrire un script qui demande à l'utilisateur de saisir 2 nombre, puis affiche la sommes des deux
# nombre. Le programme doit pouvoir être arrêté par utilisateur , je vous laisse décider comment.

$break = Read-Host "Bonjour si tu veux entrer dans le programme d'addition écris 'Bonjour' sinon écris 'FIN'"
while ($break -ne "FIN") {
    [float]$nombre_user_1 = Read-Host "Donne moi un premier nombre. "
    [float]$nombre_user_2 = Read-Host "Donne moi un premier nombre. "
    $totale = $nombre_user_1 + $nombre_user_2
    Write-Host = "Le résultat de $nombre_user_1 + $nombre_user_2 est $totale "
    [string]$break = Read-Host "Si tu veux quitter écris 'FIN' sinon écris ce que tu veux. "
}

# 4) Lister tous les attributs de fichiers que l'on trouve dans le dossier "c:\Windows" et sans doublon.

$Mesfichiers = Get-ChildItem c:\Windows
$Mesfichiers

###################################################################################################################

# 1) Créez un script qui n'affiche que les services en cours dont le nom commence par un "s"

$MesServices = get-service
$MesServices | where-object {($_.status -match "running") -and ($_.name -like "s*")}

#version avec une meilleure précision
$MaListe = Get-Service 
foreach ($_ in $MaListe) 
{ 
If ($_.name -like "s*" -and $_.status -eq "running")  { Write-Host "$($_.Name) est en $($_.status)" } 
}

# 2) Créez un script qui liste tous ce que l'on trouve dans le dossier "c:\Windows" mais vous
# ne devez afficher que les fichiers log

$MesFichiers = Get-ChildItem C:\Windows 
$MesFichiers | Where-Object {$_.name -like "*.log"}

# 3) Créez un script qui liste tous ce que l'on trouve dans le dossier "c:\Windows" mais vous
# ne devez afficher que les fichiers log qui commence par la lettre "w"

$MesFichiers = Get-ChildItem C:\Windows 
foreach ($_ in $Mesfichiers)
{
    if ($_.name -like "w*.log") { Write-Host $($_.name)}
} 

# 4) Créez un script qui liste tous ce que l'on trouve dans le dossier "c:\Windows" mais vous
# ne devez afficher que les fichiers log qui commence par la lettre "w" et dont l'attribut du
# fichier est "A"

$fichiers = Get-ChildItem C:\Windows
foreach ($_ in $fichiers)
{
    if (($_.name -like "w*.log") -and ($_.attribut -like "A")) { Write-Host $($_.name)}
}

# 5) Créez un script qui liste tous ce que l'on trouve dans le dossier "c:\Windows" mais vous
# ne devez afficher les fichiers ou dossier qui commence par la lettre "w" et dont l'attribut du
# fichier est "A" ou "D"

$fichiers = Get-ChildItem C:\Windows
foreach ($_ in $fichiers)
{
    if (($_.name -like "w*") -and ($_.attribut -like "A" -or $_.attribut -like "D")) { Write-Host $($_.name)}
}

# Autre version de la recherche.
$File1 = Get-ChildItem -Path "c:\Windows" | Where{ $_.Extension -like ".log" }  |  Where{ $_.Name -like "w*" } | Where{ $_.Attributes -match "A" -or $_.Attributes -match "D"}

# 6) Créez un script qui demande à un utilisateur de saisir un nombre, puis un autre . Afficher
# ensuite la somme des deux nombres . Puis redemandez encore la saisie de deux nombres et
# affichez encore la somme. Tant que l'utilisateur ne saisi pas le mot Clef FIN le programme
# continu.

$break = Read-Host "Bonjour si tu veux entrer dans le programme d'addition écris 'Bonjour' sinon écris 'FIN'"
while ($break -ne "FIN") {
    [float]$nombre_user_1 = Read-Host "Donne moi un premier nombre. "
    [float]$nombre_user_2 = Read-Host "Donne moi un premier nombre. "

    $totale = $nombre_user_1 + $nombre_user_2
    Write-Host = "Le résultat de $nombre_user_1 + $nombre_user_2 est $totale "

    [string]$break = Read-Host "Si tu veux quitter écris 'FIN' sinon écris ce que tu veux. "
}

#######################################################################################################################

# 1) Créez une fonction avec comme paramètres possible le nom et le prénom. Lui construire un login
# de type : Première lettre du prénom, point, le nom complet , puis @jaimepowershell.yopmail .
# Affichez le résultat Ex pour Mr Luc Dupont --------> L.Dupont@jaimepowershell.yopmail (CF :
# Question B4 )

# Version avec demande à l'utilisateur.
function mail_1 {
    [string]$nom = Read-Host "Quel est ton nom ?"
    [string]$prenom = Read-Host "Quel est ton prénom ?"
    [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"
    Write-Host  "Ton e-mail sera : $mail"
}
return mail_1

# Version sans demande à l'utilisateur.
function mail_2 ([string]$prenom, [string]$nom)
{
    [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"
    return Write-Host  "Ton e-mail sera : $mail"
}
mail_2 -prenom "Thomas" -nom "Gouez"

# 2) Créez une fonction avec comme paramètres possible le nom et le prénom. Lui construire un
# login de type : Première lettre du prénom, point, le nom complet , puis @jaimepowershell.yopmail
# Ex pour Mr Luc Dupont --------> L.Dupont@jaimepowershell.yopmail (CF : Question B4 )
# Si le prénom de cette personne commence par un "L" ou un "E" alors vous devez mettre son login
# sous la forme Luc.Dupont@jaimepowershell.Com. Affichez le résultat

function mail_3 ([string]$prenom, [string]$nom)
{
    if ($prenom -like "L*" -or $prenom -like "E") { 
        [string]$mail = ("$prenom".substring(0,3)) + "." + $nom + "@jaimepowershell.yopmail"
        return Write-Host  "Ton e-mail sera : $mail" }
    else { 
        [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"
        return Write-Host  "Ton e-mail sera : $mail"
    }
}
mail_3 -prenom "Louis" -nom "Moreau"

# 4 ) Créez une fonction avec comme paramètres possible le nom et le prénom. Lui construire un
# login de type : Première lettre du prénom, point, le nom complet , puis @jaimepowershell.yopmail
# Ex pour Mr Luc Dupont --------> L.Dupont@jaimepowershell.yopmail (CF : Question B4 )
# Si le prénom de cette personne commence par un "L" ou un "E" alors vous devez mettre son login
# sous la forme Luc.Dupont@jaimepowershell.Com . Sauf si son prénom est "Seb" si c'est la cas alors
# vous devez demander à l'utilisateur son année de naissance. Si son année est inférieure à 1980 alors
# afficher " Seb c'est bien" sinon afficher un login comme demandé question G1.

function mail_4 ([string]$prenom, [string]$nom)
{
    if ($prenom -like "L*" -or $prenom -like "E*") { 
        [string]$mail = ("$prenom".substring(0,3)) + "." + $nom + "@jaimepowershell.yopmail"
        Write-Host  "Ton e-mail sera : $mail" }
    elseif ($prenom -eq "Seb"){
        [int]$age = Read-Host "En quel année es tu née? "
        if ($age -lt 1980) {
            Write-Host "Pas ouf le prénom."
        }
        else {
            [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"
            return Write-Host  "Ton e-mail sera : $mail"
        }
    }
    else { 
        [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"
        return Write-Host  "Ton e-mail sera : $mail"
    }
}
mail_4 -prenom "Seb" -nom "Moreau"