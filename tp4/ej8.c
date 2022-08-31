#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void main(){

	pid_t pid;
	pid = fork();

	if (pid == 0)
		printf("Soy el Hijo '%d', Mi padre es '%d'\n",getpid(),getppid());
	else
		printf("Soy el Padre '%d', Mi padre es '%d'\n",getpid(),getppid());

}
