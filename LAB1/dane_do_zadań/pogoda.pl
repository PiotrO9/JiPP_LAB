jest_zimno.
pada_deszcz.

ubierz(kurtka) :-
    jest_zimno,
    pada_deszcz.

ubierz(sweter) :-
    jest_zimno,
    \+ pada_deszcz.

ubierz(koszulka) :-
    \+ jest_zimno,
    \+ pada_deszcz.

/*
WYJAŚNIENIE DO PREZENTACJI:

1. Fakty `jest_zimno.` i `pada_deszcz.` opisują stan świata – to, co jest obecnie prawdą.
   W Prologu można je dynamicznie zmieniać, aby sprawdzać różne scenariusze.

2. Reguły `ubierz/1` określają zależności między warunkami pogodowymi a decyzją, co założyć.
   Każda reguła zostanie sprawdzona przez Prologa w kolejności od góry.

3. Operator `\+` oznacza negację przez niepowodzenie (negation as failure) — 
   jeśli nie da się udowodnić faktu, Prolog uznaje go za fałsz.
   Przykład: jeśli `pada_deszcz` nie występuje w bazie, `\+ pada_deszcz` zwróci true.

4. Wykonanie zapytania `?- ubierz(Co).` powoduje, że Prolog szuka wszystkich faktów i reguł,
   które logicznie prowadzą do wniosku, co należy założyć w danych warunkach.
*/