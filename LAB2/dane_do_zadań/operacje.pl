suma(A,B,S):- S is A+B.
roznica(A,B,R):- R is A-B.
iloczyn(A,B,M):- M is A*B.
iloraz(A,B,D):- B=\=0, D is A/B.
iloraz(_,0,'Błąd: dzielenie przez zero').
