LIBS = -lallegro_image -lallegro_primitives -lallegro
INCLUDE = -I/usr/include/x86_64-linux-gnu
CHUCK_DEPS =  chuck.c game_types.h gfx_classic_levels.h gfx_sprites.h

all: chuck

chuck.o: ${CHUCK_DEPS}
	gcc -Wall -g ${INCLUDE} -c chuck.c

chuck: chuck.o
	gcc -Wall -g -o chuck chuck.o ${LIBS}

clean:
	rm -rf chuck chuck.o
