CC = gcc
CFLAGS = -Wall -Og -I $(CSAPP_INC) -I .
CSAPP_INC = ../include
CSAPP_SRC = ../src
LDLIBS = -lpthread

PROGS = fork\
	fork2\
	waitpid1\
	waitpid2\
	shellex\
	kill\
	sigint\
	blockone\
	sigintsafe\
	signal1\
	signal2\
	procmask1\
	procmask2\
	waitforsignal\
	sigsuspend\
	setjmp\
	restart\

all: $(CSAPP_SRC)/csapp.o $(PROGS)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c $(CSAPP_INC)/csapp.h

clean:
	rm -rf $(PROGS)


