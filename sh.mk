# See LICENSE file for copyright and license details.
# <++>
.POSIX:

TARGS = <++>
VERSION = <++>
DIST = <++>-${VERSION}
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
# OpenBSD
#MANPREFIX = ${PREFIX}/man

all: ${TARGS}
	chmod +x ${TARGS}

dist:
	mkdir -p ${DIST}
	cp -R <++> ${DIST}
	tar -cf ${DIST}.tar ${DIST}
	gzip ${DIST}.tar
	rm -rf ${DIST}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin ${DESTDIR}${MANPREFIX}/man1
	cp -f ${TARGS} ${DESTDIR}${PREFIX}/bin
	for targ in ${TARGS} ; do \
		sed "s/VERSION/${VERSION}/g" < $${targ}.1 > ${DESTDIR}${MANPREFIX}/man1/$${targ}.1 \
		chmod 755 ${DESTDIR}${PREFIX}/bin/$${targ} ; \
		chmod 644 ${DESTDIR}${MANPREFIX}/man1/$${targ}.1 ; \
	done

uninstall:
	for targ in ${TARGS} ; do \
		rm -f ${DESTDIR}${PREFIX}/bin/$${targ} ; \
		rm -f ${DESTDIR}${MANPREFIX}/man1/$${targ}.1 ; \
	done

clean:
	rm -f ${DIST}.tar.gz

.PHONY: all clean dist install uninstall
