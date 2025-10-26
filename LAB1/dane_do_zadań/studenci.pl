student(vadym, informatyka, 5).
student(marek, informatyka, 5).
student(ola, ekonomia, 3).
student(ania, ekonomia, 3).
student(pawel, informatyka, 4).

prowadzi(kowalski, programowanie).
prowadzi(nowak, bazy_danych).
prowadzi(kaminska, ekonometria).

% Dwie osoby uczą się razem, jeśli są na tym samym kierunku i semestrze,
% ale nie są tą samą osobą.
uczy_sie_z(X, Y) :-
    student(X, Kierunek, Semestr),
    student(Y, Kierunek, Semestr),
    X \= Y.


# 1. Reguła `uczy_sie_z/2` wykorzystuje unifikację — Prolog dopasowuje zmienne X i Y
#    do wszystkich studentów o tym samym kierunku i semestrze.

# 2. `X \= Y` wymusza, że porównywane osoby są różne, aby uniknąć sytuacji, 
#    w której program uzna, że ktoś „uczy się sam ze sobą”.

# 3. Unifikacja działa tak, że Prolog sprawdza wszystkie kombinacje faktów `student/3`
#    i znajduje te, które spełniają oba warunki (ten sam kierunek i semestr).