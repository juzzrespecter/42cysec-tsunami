#include <windows.h>
#include <stdio.h>
#include <string.h>

void print_usage(void)
{
    printf("usage: tsunami.exe ARG\n");
}

int main(int argc, char *argv[])
{
    int  canary;
    char buf[50];

    if (argc != 2)
    {
	print_usage();
	return 1;
    }
    printf("buffer ptr: %p\n", &buf);
    strcpy(buf, argv[1]);
    if (canary == 0x41414141)
    {
	printf("Overflow incoming...\n");
    }
    return 0;
}
