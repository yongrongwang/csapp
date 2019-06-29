CC = gcc
CFLAGS = -Wall
MFLAGS = -mavx2
OPTg = -Og
OPT1 = -O1
CINC = -I../include

.SUFFIXES: .c .s .d .O1-s

.c.s:
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) -S $*.c -o $*.s

.c.O1-s:
	$(CC) $(CFLAGS) $(MFLAGS) $(OPT1) $(CINC) -S $*.c -o $*.O1-s

.c.d:
	$(CC) $(CFLAGS) $(MFLAGS) $(OPTg) $(CINC) $*.c -c -o $*.o
	objdump -d $*.o > $*.d

PROGS = scheck\
	prog1\

all: prog $(PROGS)

prog:	\
	mstore.s \
	mstore.d \
	exchange.s \
	leaq.s \
	arith.s \
	bufdemo.s \
	muldiv.s \
	abs.s \
	absdiff.s \
	fact.s \
	fact.O1-s \
	switch.s \
	swapadd.s \
	procregs.s \
	array.s \
	array.O1-s \
	structure.s \
	union.s \
	node.s \
	align.s \
	frame.s \
	floatcvt.s \
	floatfunct.s \
	floatconst.s \

scheck: scheck.c
	$(CC) $(OPTg) scheck.c -o scheck

prog1: main.c mstore.c
	$(CC) $(OPTg) main.c mstore.c -o prog1

clean:
	rm -f $(PROGS) *.o *.s *.d *.O1-s

