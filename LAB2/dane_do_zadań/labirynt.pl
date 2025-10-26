droga(a,b).
droga(a,c).
droga(b,d).
droga(c,e).
droga(e,f).

sciezka(X,Y):- droga(X,Y).
sciezka(X,Y):- droga(X,Z), sciezka(Z,Y).
