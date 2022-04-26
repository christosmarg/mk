# See LICENSE file for copyright and license details.
# <++>
.POSIX:

BIN = <++>
CC = sdcc
CPPFLAGS =
CFLAGS = --use-non-free -mpic<++> -p<++> ${CPPFLAGS}
PIC = <++>

SRC = <++>
OBJ = ${SRC:.c=.o}

all: options ${BIN}

options:
	@echo ${BIN} build options:
	@echo "CC	= ${CC}"
	@echo "CFLAGS	= ${CFLAGS}"

${BIN}: ${OBJ}
	${CC} ${OBJ} ${CFLAGS} -o $@

.c.o:
	${CC} -c ${CFLAGS} $<

flash: all
	pk2cmd -P ${PIC} -X -M -F ${BIN}.hex

erase:
	pk2cmd -P ${PIC} -E ${BIN}.hex

clean:
	rm -f *.hex *.asm *.cod *.hex *.lst *.o *.core

.PHONY: all options clean flash clean
