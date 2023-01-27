LIBS = -lSDL2

all: chuck

chuck.o: chuck.c game_types.h
	gcc -Wall -g -c chuck.c

chuck: chuck.o
	gcc -Wall -g -o chuck chuck.o ${LIBS}

clean:
	rm -rf chuck chuck.o
