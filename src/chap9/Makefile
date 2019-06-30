CC = gcc
CFLAGS = -Wall -g -Og -I $(CSAPP_INC) -I .
CSAPP_INC = ../include
CSAPP_SRC = ../src
LDLIBS = -lpthread

PROGS = staticsize\
	dynamicsize\
	sizeof\
	sbrk\
	map\
	mallocalign\

all: $(CSAPP_SRC)/csapp.o $(PROGS)
	(cd malloc; make)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

mallocalign: mallocalign.c
	$(CC) $(CFLAGS) -m -o mallocalign mallocalign.c

sizeof: sizeof.c
	$(CC) $(CFLAGS) -m -o sizeof sizeof.c

map: map.c 
	$(CC) $(CFLAGS) -m -o map map.c

clean:
	rm -f $(PROGS) *.o *~
	(cd malloc; make clean)

