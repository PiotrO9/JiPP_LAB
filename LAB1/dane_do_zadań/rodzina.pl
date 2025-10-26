ojciec(jan, piotr).
ojciec(jan, anna).
ojciec(piotr, kasia).
ojciec(piotr, tomek).
ojciec(adam, ewa).
ojciec(adam, marek).
matka(maria, piotr).
matka(maria, anna).
matka(ewa, kasia).
matka(ewa, tomek).

rodzenstwo(X, Y) :-
    ojciec(O, X), ojciec(O, Y),
    matka(M, X), matka(M, Y),
    X \= Y.

przodek(X, Y) :-
    ojciec(X, Y);
    matka(X, Y).

przodek(X, Y) :-
    ojciec(X, Z), przodek(Z, Y);
    matka(X, Z), przodek(Z, Y).

kuzyn(X, Y) :-
    ojciec(O1, X), ojciec(O2, Y),
    rodzenstwo(O1, O2),
    X \= Y.