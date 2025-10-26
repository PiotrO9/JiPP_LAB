student('Jan','informatyka').
student('Anna','zarzadzanie').
student('Piotr','informatyka').
student('Kasia','ekonomia').
student('Marek','informatyka').

wyswietl_informatykow:-
    student(Imie,'informatyka'),
    write(Imie), nl,
    fail.
wyswietl_informatykow:-
    write('--- koniec listy informatyków ---'), nl.