wynik('Jan',85).
wynik('Anna',72).
wynik('Piotr',50).
wynik('Kasia',30).

ocena(Punkty,'bardzo dobry') :- Punkty >= 80, !.
ocena(Punkty,'dobry')        :- Punkty >= 60, !.
ocena(Punkty,'dostateczny')  :- Punkty >= 40, !.
ocena(_, 'niedostateczny').

raport:-
    wynik(Imie,Punkty),
    ocena(Punkty,Ocena),
    format('~w: ~d pkt - ~w~n', [Imie, Punkty, Ocena]),
    fail.
raport:-
    write('Koniec raportu'), nl.

