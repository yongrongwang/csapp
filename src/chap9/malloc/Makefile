CC = gcc
CSAPP_INC = ../../include
CSAPP_SRC = ../../src
CFLAGS = -Wall -Wno-unused-result -O2 -I $(CSAPP_INC) -I . -DDRIVER

OBJS = csapp.o mm.o memlib.o

all: $(OBJS)

memlib.o: memlib.c memlib.h
mm.o: mm.c mm.h memlib.h
csapp.o: $(CSAPP_SRC)/csapp.c
	$(CC) -c $(CFLAGS) $(CSAPP_SRC)/csapp.c

clean:
	rm -f *.o
