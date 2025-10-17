.PHONY: all build run clean repl

STACK := stack
TEST_HS := test/Test.hs
OUT := Test

all: build

# Compila el ejecutable de tests usando tu comando habitual
build:
	$(STACK) ghc -- --make $(TEST_HS) -i src/Tarea1.hs -o $(OUT)

# Ejecuta el binario (compila si es necesario)
run: build
	./$(OUT)

# Arranca GHCi con src en el path
repl:
	$(STACK) ghci -i src

# Limpia artefactos
clean:
	rm -f $(OUT) *.o *.hi src/*.o src/*.hi test/*.o test/*.hi