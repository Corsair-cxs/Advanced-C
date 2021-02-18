.PHONY: clean
all: union union.s union.i 
union:
	gcc union.c -o union

union.s:
	gcc union.c -S -o union.s

union.i:
	gcc union.c -E -o union.i


clean:
	rm a.out
