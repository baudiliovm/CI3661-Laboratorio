% Hechos de prelaciones: prela(Prelacion, Materia).
prela(ci2691, ci3661).
prela(ci2525, ci2691).
prela(ci2691, ci3641).
prela(ci3641, ci3725).
prela(ci3725, ci3825).
prela(ma1111, ci2525).

% prelacion_directa/2 se cumple cuando A es prelacion directa de B.
prelacion_directa(A, B) :-
    prela(A, B).

% prelacion_total/2 se cumple cuando A es prelacion directa o indirecta de B.
prelacion_total(A, B) :-
    prela(A, B).
prelacion_total(A, B) :-
    prela(A, C),
    prelacion_total(C, B).

