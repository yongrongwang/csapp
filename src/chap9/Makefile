CC = gcc
CFLAGS = -Wall -g -Og -I $(CSAPP_INC) -I .
CSAPP_INC = ../include
CSAPP_SRC = ../src
LDLIBS = -lpthread

PROGS = fragments.o\
	staticsize\
	dynamicsize\

all: $(CSAPP_SRC)/csapp.o $(PROGS)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

clean:
	rm -f $(PROGS)

