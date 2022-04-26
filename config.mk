# See LICENSE file for copyright and license details.
# <++> version
VERSION = <++>

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
# OpenBSD
#MANPREFIX = ${PREFIX}/man
# uncomment if you're building a library
#INCDIR = ${PREFIX}/include
#LIBDIR = ${PREFIX}/lib

# includes and libs
INCS = -Iinclude
LIBS = -Llib

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L \
	   -D_XOPEN_SOURCE=700 -DVERSION=\"${VERSION}\"
CFLAGS = -std=<++> -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = ${LIBS}
# uncomment if you're building a library
#ARFLAGS = rs

# compiler
CC = <++>
# uncomment if you're building a library
#AR = <++>
