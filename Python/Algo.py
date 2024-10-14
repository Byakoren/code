A = int(input("Entrez la valeur de A : "))
B = int(input("Entrez la valeur de B : "))
C = int(input("Entrez la valeur de C : "))
Z = 0

if A > B:
    Z = A 
    A = B
    B = Z

if C < A:
    Z = C
    C = B
    B = A 
    A = Z 
elif C < B:
        Z = C 
        C = B 
        B = Z

print(A, B, C)
