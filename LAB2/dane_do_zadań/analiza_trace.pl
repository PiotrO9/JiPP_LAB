owoc(jablko).
owoc(gruszka).
owoc(sliwka).

wypisz_owoce:-
    owoc(X),
    format('Owoc: ~w~n', [X]),
    fail.
wypisz_owoce:-
    write('--- koniec listy ---'), nl.

% Testy:
% ?- wypisz_owoce.
% ?- trace, wypisz_owoce.

/*
Komentarz do prezentacji:
Predykat `wypisz_owoce/0` demonstruje działanie mechanizmu backtrackingu w Prologu.
Pierwsza część wypisuje każdy owoc i kończy się `fail`, co wymusza cofnięcie się programu
do poprzedniego punktu wyboru (`owoc(X)`). Prolog dzięki temu przechodzi przez wszystkie fakty po kolei.
Druga reguła uruchamia się dopiero, gdy wszystkie dopasowania zostaną wyczerpane,
i wypisuje informację o zakończeniu działania.

W trybie `trace` widać kolejne etapy:
- **Call:** Prolog próbuje spełnić cel (np. `owoc(X)`),
- **Exit:** cel został spełniony (znalazł owoc),
- **Redo:** cofnięcie, aby znaleźć kolejne dopasowanie po `fail`,
- **Fail:** brak kolejnych możliwości, więc program wraca wyżej i kończy.

Wypisywanie przez `format` odbywa się przy każdym dopasowaniu, dlatego każda linia
pojawia się tyle razy, ile jest faktów w bazie. Ten przykład pokazuje, jak `fail`
pozwala przejść przez całą bazę wiedzy i wymusić pełne wypisanie wszystkich rozwiązań.
*/