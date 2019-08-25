# Makefile

OBJ = bin/main.o bin/calc.o
CFLAGS = -c -Wall -Iinclude

all: $(OBJ)
	g++ $(OBJ) -o bin/main

calc.o: src/calc.cpp include/calc.hpp
	gcc $(CFLAGS) src/calc.cpp -o bin/calc.o

main.o: src/main.cpp
	gcc $(CFLAGS) src/main.cpp -o bin/main.o

run: all
	./bin/main
