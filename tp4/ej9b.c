#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

void main(){
	pid_t pid1, pid2;

	pid1=fork();

	if(pid1==0){
		printf("Id del proceso hijo: %d\n", getpid());
		printf("Id de mi padre: %d\n", getppid());
	}

	pid2=fork();

	if(pid2==0){
		printf("Id del otro proceso hijo: %d\n", getpid());
		printf("Id de mi padre: %d\n", getppid());
	}
}
