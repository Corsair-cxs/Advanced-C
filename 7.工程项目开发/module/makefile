.PHONY: clean
all: lib/libtest.a test.o
	g++ test.o -L./lib -ltest
test.o: test.c
	g++ -I./include -c test.c
clean:
	rm -rf a.out test.o
