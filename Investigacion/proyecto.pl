% Dominio: Lista de listas de leds
% Codiminio: Verifica si la lista insertada es una lista de leds en decremento
decremento(L):-convertir(L,X), verificar(X), !.


% Dominio: Lista de leds encendidos y apagados
% Codominio: Numero que corresponde a la lista de leds encendidos y apagados
numero("YYYYYYN",0).
numero("NYYNNNN",1).
numero("YYNYYNY",2).
numero("YYYYNNY",3).
numero("NYYNNYY",4).
numero("YNYYNYY",5).
numero("YNYYYYY",6).
numero("YYYNNNN",7).
numero("YYYYYYY",8).
numero("YYYYNYY",9).


% Dominio: Lista de listas de 3 numeros
% Codominio: Verifica si las listas son decremento
verificar([E]):- E = E, !.
verificar([[A1,_A2,_A3],[B1,B2,B3]|T]):- Res is B1 + 1, A1 = Res, verificar([[B1,B2,B3]|T]),!.
verificar([[A1,A2,_A3],[B1,B2,B3]|T]):- A1 = B1, Res is B2 + 1, A2 = Res, verificar([[B1,B2,B3]|T]),!.
verificar([[A1,A2,A3],[B1,B2,B3]|T]):- A1 = B1, A2 = B2, Res is B3 + 1, A3 = Res, verificar([[B1,B2,B3]|T]),!.


% Dominio: Lista de leds de 21 elementos
% Codominio: Devuelve una lista de 3 numeros que corresponden a los numeros que los leds representan
slice([],[]):-!.
slice([H1,H2,H3,H4,H5,H6,H7 | T], [N|X]) :- numero([H1,H2,H3,H4,H5,H6,H7], N), slice(T,X),!.


% Dominio: Lista de listas de leds con 21 elementos
% Codominio: Convierte las listas de leds a listas de numeros
convertir([],[]):-!.
convertir([H|T],[S|X]) :- slice(H,S), convertir(T,X), !.



my_length([],0).
my_length([_|L],N) :- my_length(L,N1), N is N1 + 1.



quemados(E,[E|T_]):-!
quemados([H|T],[H2|T2]):- 

%quemados(E,[E|T_]).
%quemados(E,[_H|T]):- miembro(E,T).


prendido(N,'Y'):-!.