CC=g++
CFLAGS=-Iinclude -g

SRC=$(wildcard src/*.cpp)
OBJ=$(SRC:.cpp=.o)

all: main

main: $(OBJ)
	$(CC) $(CFLAGS) -o main $(OBJ)

.PHONY: clean
clean:
	rm -f src/*.o main
