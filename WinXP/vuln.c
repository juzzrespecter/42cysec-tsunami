#include <windows.h>
#include <stdio.h>
#include <string.h>

void print_usage(void)
{
    printf("usage: tsunami.exe ARG\n");
}

int main(int argc, char *argv[])
{
    char buf[50];

    if (argc != 2)
    {
	print_usage();
	return 1;
    }
    strcpy(buf, argv[1]);
    return 0;
}
