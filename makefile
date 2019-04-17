test : test.c
	gcc -fopenmp -o3 test.c -o test
clean:
	rm test
