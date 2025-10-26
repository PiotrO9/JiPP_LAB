pole_prostokata(A,B,P):- A>0, B>0, P is A*B.
obwod_prostokata(A,B,O):- A>0, B>0, O is 2*(A+B).

pole_trojkata(A,H,P):- A>0, H>0, P is (A*H)/2.
obwod_trojkata(A,B,C,O):- A>0, B>0, C>0, O is A+B+C.

pole_kola(R,P):- R>0, P is 3.14159*R*R.
obwod_kola(R,O):- R>0, O is 2*3.14159*R.

dane_figury:-
    pole_prostokata(3,4,P1), obwod_prostokata(3,4,O1),
    write('Prostokąt -> pole: '), write(P1), write(', obwód: '), writeln(O1),
    pole_trojkata(6,4,P2), obwod_trojkata(3,4,5,O2),
    write('Trójkąt -> pole: '), write(P2), write(', obwód: '), writeln(O2),
    pole_kola(5,P3), obwod_kola(5,O3),
    write('Koło -> pole: '), write(P3), write(', obwód: '), writeln(O3).