.PHONY: clean
all: lib/libhaizei.a test.o
	g++ test.o -L./lib -lhaizei
test.o: test.c 
	g++ -I./include -c test.c
clean:
	rm -rf a.out test.o
