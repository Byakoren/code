$Maliste = Import-Csv -Path C:\TMP\test.csv -Delimiter ";"
# $Maliste  | fl
# foreach ($user in $Maliste)
# { 
#     [string]$nom = $user.nom
#     [string]$prenom = $user.prenom
#     [string]$mail = ("$prenom".substring(0,1)) + "." + $nom + "@jaimepowershell.yopmail"
#     $user.login = $mail

# }
#$Maliste | Export-Csv -Path C:\TMP\test.csv -Delimiter ";"

#Création de dossier via les prénoms dans la liste.
# foreach ($user in $Maliste)
# {
#     mkdir -Path C:\TMP -name $user.prenom
#     while 
# }
foreach ($user in $Maliste)
{
    $number = $Maliste.nom.Length
    while ($number ) {
        
    }
}
# Créer autant de fichiers dans le dossier user qu'il y a de lettre dans son nom
# Le nom du fichier = la lettre en cours 
new-item 

$Maliste.nom[0]