%ARBOLES
%-------

%ARBOLES BINARIOS
%----------------

%CUENTA NODOS

%FUNCION 
% cuenta_nodos(+Arbol, -Nodos)
% es cierto cuando Nodos unifica con el 
% numero de nodos de un Arbol

cuenta_nodos(nil, 0).

cuenta_nodos(A(_,Hi,Hd), NT):- cuenta_nodos(Hi, N), cuenta_nodos(Hd, M), NT is M + N + 1.

%---------------------------------------------------------------------------------------------------------------------------------------

%CUENTA HOJAS

%FUNCION
%lista_hojas(+ArbolB, -NumHojas)
% es cierto cuando NumHojas unifica con el
% numero de hojas que tiene ArbolB

lista_hojas(nil, []).

lista_hojas(A(_, Hi,Hd), N):- 
+/ hoja(A(_,Hi,Hd),
lista_hojas(Hi, NI), 
lista_hojas(Hd, ND), 
append( NI, ND, N).

lista_hojas(A(E, nil, nil), [E]).

% hoja(+Arbol)
% es cierto si Arbol es una hoja

hoja(a(_, nil, nil)).

%---------------------------------------------------------------------------------------------------------
%CUENTA INTERNOS

%FUNCION
% cuenta_internos(+Arbol, -N)
% es cierto cuando N unifica con el numero
% de nodos que no son hojas (internos)

cuenta_internos(A(_,nil,nil), 1).

cuenta_internos(A(_, Hd, Hi), It):- 
cuenta_hojas(A(_,Hi,Hd), Ht), 
cuenta_nodos(Hd, ND), 
cuenta_nodos(Hi, NI), 
Nt is ND + NI, 
It is Nt - Ht.

% cuenta_hojas(+Arbol, -N) ---------------------------------------
% es cierto cuando N unifica con el numero de hojas de Arbol

cuenta_hojas(A(_,nil,nil), 1).

cuenta_hojas(A(_, Hi, Hd), Ht):- 
/+ hoja(A(_,Hi,Hd)), 
cuenta_hojas(Hi, Ni), 
cuenta_hojas(Hd, Nd), 
Ht is Ni + Nd.






