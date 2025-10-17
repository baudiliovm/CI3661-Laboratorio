# Tarea1
## Resumen

Proyecto con la solución de la "Tarea 1" (implementaciones en Haskell) y pruebas unitarias con HUnit.

## Estructura de archivos

```text
Proyecto (raíz)
├─ Makefile                       # tareas de compilación / ejecución
├─ package.yaml                   # configuración de Stack/Cabal
├─ stack.yaml
├─ src/
│  ├─ Tarea1.hs                   # implementaciones de la tarea
│  └─ Main.hs                      # (opcional) ejecutable
├─ test/
│  └─ Test.hs                      # pruebas unitarias (Test.HUnit)
└─ README.md                       # este archivo
```

## Cómo compilar y ejecutar

Abre una terminal y sitúate en el directorio del proyecto:

### Usando el Makefile (recomendado)

```bash
# Compilar:
make

# Ejecutar tests:
make run
```

### Usando Stack directamente

```bash
stack setup            # solo la primera vez
stack build            # resuelve dependencias y compila
stack ghc -- --make test/Test.hs -i src -o Test
./Test
```
