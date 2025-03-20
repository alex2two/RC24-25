/*

my_append(?Lista1,?Lista2,?ListaResultado)

sera cierto si ListaResulado unifica con los elementos de Lista1 y, a continuacion, los de Lista2.

*/
/*No se podria tner un caso de dos listas vacias?*/
my_append([],List2,List2).

my_append([Cab1|Resto1],List2, [Cab1|R]):- my_append(Resto1, List2, R).