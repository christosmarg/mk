# See LICENSE file for copyright and license details.
# <++> version
VERSION = <++>

# paths
PREFIX = /usr/local
MAN_DIR = ${PREFIX}/share/man/man1
BIN_DIR = ${PREFIX}/bin
# uncomment if you're making a library
#MAN_DIR = ${PREFIX}/share/man/man3
#INC_DIR = ${PREFIX}/include
#LIB_DIR = ${PREFIX}/lib

# includes and libs
INCS = -Iinclude 
LIBS = -Llib <++>

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L \
	   -D_XOPEN_SOURCE=700 -DVERSION=\"${VERSION}\"
CFLAGS = -std=<++> -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = ${LIBS}
# uncomment if you're making a library
#ARFLAGS = rs

# utils
CP = cp -f
RM = rm -f
RM_DIR = rm -rf
MV = mv
MKDIR = mkdir -p
RM_DIR = rm -rf
TAR = tar -cf
GZIP = gzip

# compiler
CC = <++>
# uncomment if you're making a library
#AR = ar
