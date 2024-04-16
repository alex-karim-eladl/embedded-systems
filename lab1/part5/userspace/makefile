

all: unsafe_test safe_test alloc free maxout

unsafe_test: unsafe_test.c
	gcc -o unsafe_test unsafe_test.c -lpthread

safe_test: safe_test.c
	gcc -o safe_test safe_test.c -lpthread

alloc: alloc.c
	gcc -o alloc alloc.c

free: free.c
	gcc -o free free.c

maxout: maxout.c
	gcc -o maxout maxout.c

clean:
	rm unsafe_test safe_test alloc maxout free