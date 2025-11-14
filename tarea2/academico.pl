% Hechos sobre profesores, estudiantes, materias y notas.
dicta(leonardo, ci3661).
dicta(maria, ci3725).
dicta(pedro, ci2691).

cursa(ana, ci3661).
cursa(ana, ci3725).
cursa(juan, ci3661).
cursa(elena, ci2691).
cursa(elena, ci3725).

nota(ana, ci3661, 88).
nota(ana, ci3725, 70).
nota(juan, ci3661, 40).
nota(elena, ci2691, 51).

% profesor_de/2 es verdadero si el profesor dicta al menos una materia al estudiante.
profesor_de(Prof, Est) :-
    dicta(Prof, Materia),
    cursa(Est, Materia).

% aprobado/2 es verdadero si el estudiante tiene nota mayor o igual a 50 en la materia.
aprobado(Est, Mat) :-
    nota(Est, Mat, Nota),
    Nota >= 50.

% aplazado/1 es verdadero si el estudiante tiene al menos una nota menor a 50.
aplazado(Est) :-
    nota(Est, _, Nota),
    Nota < 50.

% cursando_sin_nota/2 es verdadero si el estudiante cursa la materia pero no tiene nota registrada.
cursando_sin_nota(Est, Mat) :-
    cursa(Est, Mat),
    \+ nota(Est, Mat, _).
