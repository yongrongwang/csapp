CC = gcc
OPTg = -Og
OPT1 = -O1
MFLAGS = -mavx2

floatfunct.s: floatfunct.c
	$(CC) $(MFLAGS) $(OPT1) -S floatfunct.c

PROGS = floatfunct.s \

all: $(PROGS)

clean:
	rm -rf $(PROGS)
