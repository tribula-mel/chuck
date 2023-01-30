LIBS = -lallegro_image -lallegro_primitives -lallegro
INCLUDE = -I/usr/include/x86_64-linux-gnu

all: chuck

chuck.o: chuck.c game_types.h
	gcc -Wall -g ${INCLUDE} -c chuck.c

chuck: chuck.o
	gcc -Wall -g -o chuck chuck.o ${LIBS}

clean:
	rm -rf chuck chuck.o
