triangulo(A,B,C) :- A > 0, B > 0, C > 0, 
                    AB is A + B, AB >= C, AC is A + C, AC >= B, BC is B + C, BC >= A.

iguales(A,B) :- A = B.
equilatero(A,B,C) :- A = B, A = C, B = C.
isosceles(A,B,C) :- iguales(A,B) ; iguales(B,C) ; iguales(A,C).
escaleno(A,B,C) :- A \= B, A \= C, C \= B, C \= A.

triangle(A, B, C, "equilateral"):- triangulo(A,B,C), equilatero(A,B,C).
triangle(A, B, C, "isosceles"):- triangulo(A,B,C), isosceles(A,B,C).
triangle(A, B, C, "scalene"):- triangulo(A,B,C), escaleno(A,B,C).