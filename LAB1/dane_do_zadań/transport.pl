srodek_transportu(auto).
srodek_transportu(rower).
srodek_transportu(pociag).
srodek_transportu(samolot).

dystans(auto, sredni).
dystans(rower, krotki).
dystans(pociag, dlugi).
dystans(samolot, bardzo_dlugi).

pogoda(rower, dobra).
pogoda(auto, dowolna).
pogoda(pociag, dowolna).
pogoda(samolot, dowolna).

koszt(rower, niski).
koszt(auto, sredni).
koszt(pociag, sredni).
koszt(samolot, wysoki).

wybierz_transport(X, Dystans, Pogoda, Koszt) :-
    srodek_transportu(X),
    dystans(X, Dystans),
    pogoda(X, Pogoda),
    koszt(X, Koszt).

rekomenduj(X, Dystans, Pogoda) :-
    srodek_transportu(X),
    dystans(X, Dystans),
    pogoda(X, Pogoda).

/*
1. Fakty definiują świat wiedzy — Prolog „wie”, jakie środki transportu istnieją,
   w jakich warunkach są stosowane i jakie mają właściwości.

2. Reguła `wybierz_transport/4` pozwala dopasować środek transportu
   do konkretnych parametrów: dystansu, pogody i kosztu.
   W wyniku unifikacji Prolog znajduje wszystkie X, które spełniają podane warunki.

3. Reguła `rekomenduj/3` to uproszczona wersja – logicznie wnioskuje
   tylko na podstawie dystansu i pogody.

4. Jeśli zapytanie ma wiele możliwych odpowiedzi, po wciśnięciu `;`
   Prolog przechodzi do kolejnych dopasowań (mechanizm backtrackingu).

5. Ten przykład pokazuje, jak Prolog może pełnić funkcję prostego systemu ekspertowego:
   zamiast listy if-ów, mamy czyste zależności logiczne i reguły wnioskowania.
*/