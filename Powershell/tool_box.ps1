#Affecter des variables:
[string]$A = "Ceci est un string"     #String
[int]$B = 120                         #Integer 
[float]$C = 150.25                    #Float
[double]$D = 23.2544                  #Float avec plus grande possibilité de nombre après la virgule.
[bool]$E = $true                      #Boolean True
[bool]$D = $false                     #Boolean False

[string]$nom = Read-Host "Quel est ton nom?"            #Demander quelque chose à l'utilisateur en string 
[int]$age = Read-Host "Quel est ton âge? "              #Pareil mais en int

$MesProcess = Get-Process System

"formation" -like "for"
"formation" -like "for*" # * tous les caractères
"formation" -like "for?" # ? N'importe quel caractère
"formation" -like "?or?a*"
"formation" -match "for"
"formation" -match "for*" # * tous les caractères
"formation" -match "for?" # ? N'importe quel caractère
"formation" -match "form[abc]"
"formation" -match "form[b-z]"