#include <omp.h>
#include <stdio.h>
int main()
{
    #pragma omp parallel
    {
        int i = 0;
        int count = 0;
        for (i = 0; i < 1000000000; i++) {
            count++;
        }
    }

    return 0;
}
