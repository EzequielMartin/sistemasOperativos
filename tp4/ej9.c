#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>

void main(){

	pid_t pid;
	pid = fork();

	if (pid == 0)
		printf("Soy el proceso hijo '%d'\n",getpid());
	else{
		printf("Soy el proceso padre '%d'\n",getpid());
		printf("Soy el proceso abuelo '%d'\n",getppid());
	}

}
