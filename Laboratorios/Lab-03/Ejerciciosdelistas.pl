primer(Cabeza,[Cabeza|_]).

ultimo(Ultimo,[Ultimo]).
ultimo(Ultimo,[_|Cola]):-
    ultimo(Ultimo,Cola),!.


miembro(Cabeza,[Cabeza|_]).
miembro(Elemento,[_|Cola]):-
    miembro(Elemento,Cola),!.

indice(Elemento,[Cabeza|_],X):-
    X == 0,
    Elemento = Cabeza.

indice(Elemento,[_|Cola],X):-
    X > 0,
    C is X - 1,
    indice(Elemento,Cola,C).