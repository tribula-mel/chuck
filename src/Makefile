LIBS = -lallegro_image -lallegro_primitives -lallegro_font -lallegro_ttf -lallegro
INCLUDE = -I/usr/include/x86_64-linux-gnu
CHUCK_DEPS =  chuck.c game_types.h gfx_classic_levels.h gfx_sprites.h \
              player_context_type.h title_context.h common_defines.h

all: chuck

player_context_type.o: player_context_type.c player_context_type.h common_defines.h
	gcc -Wall -g ${INCLUDE} -c player_context_type.c

title_context.o: title_context.c title_context.h
	gcc -Wall -g ${INCLUDE} -c title_context.c

chuck.o: ${CHUCK_DEPS}
	gcc -Wall -g ${INCLUDE} -c chuck.c

chuck: chuck.o player_context_type.o title_context.o
	gcc -Wall -g -o chuck player_context_type.o title_context.o chuck.o ${LIBS}

clean:
	rm -rf chuck chuck.o *.o
