test : test.c
	gcc -fopenmp test.c -o test
clean:
	rm test
