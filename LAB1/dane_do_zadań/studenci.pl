student(vadym, informatyka, 5).
student(marek, informatyka, 5).
student(ola, ekonomia, 3).
student(ania, ekonomia, 3).
student(pawel, informatyka, 4).

prowadzi(kowalski, informatyka).
prowadzi(nowak, ekonomia).
prowadzi(kaminska, fizjoterapia).

% Dwie osoby uczą się razem, jeśli są na tym samym kierunku i semestrze,
% ale nie są tą samą osobą.
uczy_sie_z(X, Y) :-
    student(X, Kierunek, Semestr),
    student(Y, Kierunek, Semestr),
    X \= Y.

prowadzi_dla_studenta(Pracownik, Student) :-
    student(Student, Kierunek, _),
    prowadzi(Pracownik, Kierunek).
