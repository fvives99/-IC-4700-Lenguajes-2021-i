cuenta(maria,-500000).
cuenta(stephanie,150000).
cuenta(mateo,0).
cuenta(marcela,-120500).
cuenta(sergio,100800).

puede_prestar(Acreedor, Deudor, Monto):-
    cuenta(Acreedor,BalanceAcreedor),
    BalanceAcreedor >= Monto,
    cuenta(Deudor,BalanceDeudor),
    BalanceDeudor >= 0.


% puede_prestar en prestamos.pl  se refiere a 