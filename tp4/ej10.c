#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

void main(){

	pid_t pid;
	pid = fork();

	if (pid == 0){
		printf("Soy el proceso hijo: %d y mi proceso padre es: %d\n",getpid(),getppid());
		execl("/bin/ls","ls","-l",NULL);
	}else{
		printf("Soy el proceso padre: %d\n",getpid());
	}
}
