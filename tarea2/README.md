# Tarea 2 – Prolog

CI-3661 – Laboratorio de Lenguajes de Programación I
Universidad Simón Bolívar

## Contenido

- `prelaciones.pl`: Modela el árbol de prelaciones del pensum.
  - Hecho base: `prela(Materia, Prelacion)`.
  - Predicados principales:
    - `prelacion_directa(A, B)`: A es prelación directa de B.
    - `prelacion_total(A, B)`: A es prelación (directa o indirecta) de B.

- `academico.pl`: Modela una base de datos académica simple.
  - Hechos base: `dicta/2`, `cursa/2`, `nota/3`.
  - Predicados principales:
    - `profesor_de(Prof, Est)`
    - `aprobado(Est, Mat)`
    - `aplazado(Est)`
    - `cursando_sin_nota(Est, Mat)`

## Cómo ejecutar (SWI‑Prolog)

Desde la carpeta raíz del repo (`CI3661-Laboratorio`):

```bash
swipl tarea2/prelaciones.pl
```

En el prompt de Prolog puedes probar, por ejemplo:

```prolog
?- prelacion_total(ci2525, ci3661).
?- prelacion_total(ma1111, ci3825).
```

Para el archivo académico:

```bash
swipl tarea2/academico.pl
```

Y en el prompt:

```prolog
?- profesor_de(leonardo, ana).
?- aprobado(ana, ci3661).
?- aplazado(juan).
?- cursando_sin_nota(elena, ci3725).
```
