#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

void backdoor()
{
	system("/bin/sh");
}

void init()
{
	setvbuf(stdin,0,2,0);
   	setvbuf(stdout,0,2,0);
   	setvbuf(stderr,0,2,0);
}

void vuln()
{
	char vuln[0x10];
	printf("vulnerable? so what?? come to pwn me!!\n");
	read(0,vuln,0x20);
}

int main()
{
	char message[0x10];
	init();
	printf("leave some message??\n");
	read(0,message,0x10);

	vuln();

	return 0;
}