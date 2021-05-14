
word(0) :- write('cero').
word(1) :- write('uno').
word(2) :- write('dos').
word(3) :- write('tres').
word(4) :- write('cuatro').
word(5) :- write('cinco').
word(6) :- write('seis').
word(7) :- write('siete').
word(8) :- write('ocho').
word(9) :- write('nueve').

escribir_con_letras(Numeros) :-
    Numero is Numeros // 10,
    dash_numeros_letras(Numero),
    NModulo is Numeros mod 10,
    word(NModulo).

dash_numeros_letras(0).

dash_numeros_letras(Numeros) :-
    Numeros > 0,
    Numero is Numeros // 10,
    dash_numeros_letras(Numero),
    NModulo is Numeros mod 10,
    word(NModulo),
    write('-').
