CC = gcc
CFLAGS = -g3 -std=c99 -pedantic -Wall -lm

TSP : TSP.o location.o
	${CC} ${CFLAGS} -o TSP TSP.o location.o

TSP.o : TSP.c location.h
	${CC} ${CFLAGS} -c  TSP.c

location.o : location.c location.h
	${CC} ${CFLAGS} -c  location.c

