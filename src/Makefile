LIBS = -lallegro_image -lallegro_primitives -lallegro_font -lallegro_ttf \
       -lallegro_audio -lallegro
INCLUDE = -I/usr/include/x86_64-linux-gnu
CHUCK_DEPS =  chuck.c game_types.h gfx_sprites.h \
              player_context.h title_context.h game_context.h \
              sound/sound.h

all: chuck

player_context.o: player_context.c player_context.h common_defines.h
	gcc -Wall -g ${INCLUDE} -c player_context.c

title_context.o: title_context.c title_context.h
	gcc -Wall -g ${INCLUDE} -c title_context.c

game_context.o: game_context.c game_context.h gfx_classic_levels.h \
                common_defines.h game_types.h player_context.h
	gcc -Wall -g ${INCLUDE} -c game_context.c

sound/ay8912.o: sound/ay8912.c sound/ayemu.h sound/ayemu_8912.h
	gcc -Wall -g ${INCLUDE} -c sound/ay8912.c

sound/sound.o: sound/ayemu.h sound/ayemu_8912.h sound/sound.h sound/sound.c
	gcc -Wall -g ${INCLUDE} -c sound/sound.c

chuck.o: ${CHUCK_DEPS}
	gcc -Wall -g ${INCLUDE} -c chuck.c

chuck: chuck.o player_context.o title_context.o game_context.o \
       sound/ay8912.o sound/sound.o
	gcc -Wall -g -o chuck player_context.o title_context.o game_context.o \
                   chuck.o ay8912.o sound.o ${LIBS}

clean:
	rm -rf chuck chuck.o *.o
