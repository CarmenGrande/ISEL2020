CC=gcc
CFLAGS= -Wall -Werror -g -O -ansi

main: main.o fsm.o bombilla.o alarma.o codigo.o
	gcc -o main $(CFLAGS)  main.o fsm.o bombilla.o alarma.o codigo.o

%.o : %.c
	gcc -c $<

clean:
	rm -f main *.o
