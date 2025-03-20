my_reverse([],[]).

my_reverse([Cab|Resto], R2 ) :- my_reverse(Resto,R), append(R,[Cab],R2).