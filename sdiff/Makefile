#	$OpenBSD: Makefile,v 1.4 2006/02/20 08:38:18 otto Exp $

PROG=sdiff
SRCS=common.c edit.c sdiff.c \
     strlcat.c strtonum.c fparseln.c
COPTS+=-Wall -W
CFLAGS += $(COPTS) -g

LDADD+=	-lutil
DPADD+=	${LIBUTIL}

$(PROG): $(SRCS:.c=.o)
	$(CC) -o $@ $(CFLAGS) $(SRCS:.c=.o)

.PHONY: clean cleanall

clean:
	$(RM) $(SRCS:.c=.o)

cleanall: clean
	$(RM) $(PROG)

##.include <bsd.prog.mk>
