/*

isogram(phrase)

Sera verdadero cuando la frase no tenga ningun caracter repetido, 
sin contar los espacios o guiones.

string_chars (devulve una "lista" con los caracteres separados)

distinctall

string_codes(DEVUELVE EL CODIGO ASCII DE LOS CARACTERES)

quita_balncos(Lista,R)
  sera cierto si R unifica con una lista de nuemrs que contiene List a,menos los "-" (45) y " " (32)
*/

:- use_module(library(clpfd)).

blanco(32).
blanco(45).
isogram(String) :- string_lower(String,R),
		string_codes(R,R2),
		exclude(blanco,R2,R3),
		all_distinct(R3).
