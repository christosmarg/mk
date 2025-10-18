# See LICENSE file for copyright and license details.
VERSION=	<++>

PREFIX=		/usr/local
MANPREFIX= 	${PREFIX}/share/man
# OpenBSD
#MANPREFIX= 	${PREFIX}/man
# uncomment if you're building a library
#INCDIR= 	${PREFIX}/include
#LIBDIR= 	${PREFIX}/lib

CFLAGS=		-D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L \
		-D_XOPEN_SOURCE=700 -DVERSION=\"${VERSION}\" \
		-Iinclude -std=<++> -pedantic -Wall -Os
LDFLAGS= 	-Llib
# uncomment if you're building a library
#ARFLAGS=	rs

CC=		<++>
# uncomment if you're building a library
#AR=		<++>
