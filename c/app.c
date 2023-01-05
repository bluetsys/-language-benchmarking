#include <stdio.h>
#include <time.h>

int main()
{
    long add = 0;
    time_t st = time(NULL);
    for (long index = 0; index <= 100000000; index++)
    {
        add = add + index;
    }

    long ed = time(NULL) - st;

    printf("==========================\r\n");
    printf("gcc\r\n");
    printf("%ld\r\n", add);
    printf("%lf\r\n", (double) ed / (double) 1000);
}