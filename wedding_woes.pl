chatty(gustavo).
chatty(valeria).
likes(esteban,malena).
likes(malena,esteban).
likes(gutavo,malena).

pairing(A,B):- likes(A,B),likes(B,A).
pairing(A, _):- chatty(A).
pairing(_, A):- chatty(A).

%seating(A,B,C,D,E):- pairing(A,B), pairing(A,C), pairing(A,D), pairing(A,E),
	%		pairing(B,A), pairing(B,C), pairing(B,D), pairing(B,E),
		%	pairing(C,A), pairing(C,B), pairing(C,D), pairing(C,E),
			%pairing(D,A), pairing(D,B), pairing(D,C), pairing(D,E),
			%pairing(E,A), pairing(E,B), pairing(E,C), pairing(E,D).

%EL DE ARIRBA DEBE ESTAR MAL
%EL DE ABAJO DEBE ESTAR BIEN

seating(A,B,C,D,E):- pairing(A,B), pairing(B,C),pairing(C,D), pairing(D,E), pairing(E,A).