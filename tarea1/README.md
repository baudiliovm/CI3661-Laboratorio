# Tarea1 — Laboratorio de Lenguajes de Programación I

## Resumen

Proyecto con la solución de la "Tarea 1" (implementaciones en Haskell) y pruebas unitarias con HUnit.

## Estructura de archivos

```text
Proyecto (raíz)
├─ Makefile                       # tareas de compilación / ejecución
├─ package.yaml                   # configuración de Stack/Cabal
├─ stack.yaml
├─ tarea1.cabal
├─ src/
│  ├─ Tarea1.hs                   # implementaciones de la tarea
│  └─ Main.hs                      # (opcional) ejecutable
├─ test/
│  └─ Test.hs                      # pruebas unitarias (Test.HUnit)
├─ .stack-work/                    # artefactos generados por Stack (no tocar)
└─ README.md                       # este archivo
```

## Cómo compilar y ejecutar

Abre una terminal y sitúate en el directorio del proyecto:

### Usando el Makefile (recomendado)

```bash
# Compilar:
make

# Compilar y ejecutar tests:
make run

# Ejecutar el binario ya compilado:
./Test

# Abrir REPL (GHCi) con `src` en el path:
make repl

# Limpiar artefactos:
make clean
```

### Usando Stack directamente

```bash
stack setup            # solo la primera vez
stack build            # resuelve dependencias y compila
stack ghc -- --make test/Test.hs -i src -o Test
./Test
```

## Notas y solución de problemas

- Si al compilar faltan módulos estándar (Prelude / Data.Char) puede ser por un package environment corrupto. Como prueba rápida:

```bash
ghc --make test/Test.hs -i src -o Test -package-env=-
```

- Si `Test.HUnit` no se encuentra, asegúrate de que `HUnit` está en `package.yaml` y ejecuta `stack build`.

## Qué contiene `src/Tarea1.hs`

Funciones implementadas (ejemplos):

- `esPalindromo :: String -> Bool`
- `productoParesRec :: [Integer] -> Integer`
- `parsearCondicional :: [String] -> [Either String Int]`
- `sumaAcumuladaCondicional :: Float -> [Float] -> Float`
- `coordenadasImpares :: Int -> [(Int,Int)]`
- `descomponerListaSegura :: [a] -> Maybe (a,[a])`

## Qué contiene `test/Test.hs`

- Pruebas unitarias con HUnit que importan `Tarea1`.
- Ejecutar `./Test` muestra los resultados de las pruebas.
