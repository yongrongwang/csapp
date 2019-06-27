CC = gcc
CSAPP_INC = ../include
CSAPP_SRC = ../src
CFLAGS = -Wall -Og -I $(CSAPP_INC) -I .
LDLIBS = -lpthread

PROGS = fork\
	fork2\
	waitpid1\
	waitpid2\
	shellex\

all: $(CSAPP_SRC)/csapp.o $(PROGS)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

clean:
	rm -rf $(PROGS)


