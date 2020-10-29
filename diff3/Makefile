#	$OpenBSD: Makefile,v 1.2 2003/07/22 00:11:30 millert Exp $

PROG=	diff3prog
SRCS=	diff3prog.c
MAN=	diff3.1
BINDIR=	/usr/libexec
COPTS+= -Wall
CFLAGS += $(COPTS) -g

$(PROG): $(SRCS:.c=.o)
	$(CC) -o $@ $(CFLAGS) $(SRCS:.c=.o)

.PHONY: clean cleanall usage

clean:
	$(RM) $(SRCS:.c=.o)

cleanall: clean
	$(RM) $(PROG)

usage:
	@echo "diff3prog=./diff3prog ./diff3.bash file1 file2 file3"

beforeinstall:
	install -d -o ${BINOWN} -g ${BINGRP} -m 755 ${DESTDIR}/usr/bin
	install ${INSTALL_COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
	    ${.CURDIR}/diff3.ksh ${DESTDIR}/usr/bin/diff3

##.include <bsd.prog.mk>
