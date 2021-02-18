.PHONY: clean
all: main.o haizei/test.o main.i main.s
	gcc main.o haizei/test.o -o ./bin/haizeix
main.i: main.c haizei/test.h 
	gcc -I./ -E -o ./main.i main.c
main.s: main.c haizei/test.h 
	gcc -I./ -S main.c
main.o: main.c haizei/test.h
	gcc -I./ -c main.c 
haizei/test.o: haizei/test.c haizei/test.h haizei/linklist.h
	gcc -I./ -c haizei/test.c -o haizei/test.o

clean:
	rm -rf ./bin/haizeix main.o haizei/test.o main.i main.s 
