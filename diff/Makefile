#	$OpenBSD: Makefile,v 1.3 2007/05/29 18:24:56 ray Exp $

PROG=	diff
SRCS=	diff.c diffdir.c diffreg.c xmalloc.c \
		strlcat.c scandir.c
COPTS+= -Wall
CFLAGS += $(COPTS) -g

$(PROG): $(SRCS:.c=.o)
	$(CC) -o $@ $(CFLAGS) $(SRCS:.c=.o)

.PHONY: clean cleanall clean-all

clean:
	$(RM) $(SRCS:.c=.o)

clean-all cleanall: clean
	$(RM) $(PROG)

## .include <bsd.prog.mk>
