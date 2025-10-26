dzialanie(+,A,B,W) :- W is A+B, !.
dzialanie(-,A,B,W) :- W is A-B, !.
dzialanie(*,A,B,W) :- W is A*B, !.
dzialanie(/,_,0,'Błąd: dzielenie przez zero') :- !.
dzialanie(/,A,B,W) :- W is A/B, !.
dzialanie(mod,A,B,W) :- B=\=0, W is A mod B, !.
dzialanie(^,A,B,W) :- W is A**B, !.
dzialanie(_,_,_, 'Nieznany operator').

dzialanie(+,A,X,W) :- var(X), X is W - A.
dzialanie(-,A,X,W) :- var(X), X is A - W.
dzialanie(*,A,X,W) :- var(X), A=\=0, X is W / A.
dzialanie(/,A,X,W) :- var(X), W=\=0, X is A / W.

kalkulator(Op,A,B,W) :- dzialanie(Op,A,B,W).

/*
Komentarz do prezentacji:
Ten program to logiczny kalkulator wykorzystujący mechanizm dopasowania i obliczeń w Prologu.
Predykat `dzialanie/4` przyjmuje operator i dwa argumenty, rozpoznaje typ działania
i oblicza wynik za pomocą `is`, który wykonuje obliczenie arytmetyczne po prawej stronie.
Operator `!` (cut) zatrzymuje dalsze dopasowania po znalezieniu właściwego przypadku,
dzięki czemu Prolog nie szuka alternatywnych rozwiązań.

Jeśli podamy operator nieobsługiwany, zwróci komunikat „Nieznany operator”.
Zabezpieczenie `B=\=0` chroni przed dzieleniem przez zero.
Dodatkowo wprowadzono tryb odwrotny — gdy jeden z argumentów jest niewiadomy (zmienna),
Prolog sam wylicza jego wartość logicznie, dopasowując równanie do wyniku.

Całość pokazuje różnicę między unifikacją (=), która tylko dopasowuje struktury,
a `is`, które faktycznie oblicza wyrażenie.
Kalkulator działa więc jak system wnioskowania – nie tylko wykonuje działanie,
ale potrafi też „rozumieć” zależność między liczbami.
*/