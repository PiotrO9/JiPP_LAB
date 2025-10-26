uzytkownik(jan).
uzytkownik('Jan').
uzytkownik("Jan").

typ(Wartosc, Typ):-
    atom(Wartosc), Typ = 'atom'.
typ(Wartosc, Typ):-
    string(Wartosc), Typ = 'string'.
typ(_, 'inny typ').

wypisz_uzytkownikow:-
    uzytkownik(X),
    typ(X,Typ),
    format('Użytkownik: ~w, typ: ~w~n', [X, Typ]),
    fail.
wypisz_uzytkownikow:-
    findall(X, uzytkownik(X), Lista),
    length(Lista, L),
    format('Liczba znalezionych przypadków: ~d~n', [L]).

