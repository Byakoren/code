#Commande qu'on utilise pour importer le module math qui contient déjà plusieurs variables et fonction en rapport avec.
import math 

#Commande permettant d'importer uniquement la fonction sqrt du module math.
from math import sqrt 

#Permet d'importer tout du module math sans avoir besoin de taper .math à chauqe fois.
from math import *

"""Universal imports may look great on the surface, but they’re not a good idea for one very important reason: they fill your program
with a ton of variable and function names without the safety of those names still being associated with the module(s) they came from.

If you have a function of your very own named sqrt and you import math, your function is safe: there is your sqrt and there is
math.sqrt. If you do from math import *, however, you have a problem: namely, two different functions with the exact same name."""

#Petit code permettant d'afficher tout ce que contient le module math après l'avoir importer.
import math # Imports the math module
everything = dir(math) # Sets everything to a list of things from math
print (everything) # Prints 'em all!