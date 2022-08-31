#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/stat.h>

void main(){

	pid_t pid;
	pid = fork();

	if (pid == 0){
		printf("Soy el proceso hijo: %d , Mi padre es: %d\n",getpid(),getppid());
		execl("/bin/ls","ls","-l","-a",NULL);
	}else{
		printf("Soy el proceso padre: %d, Mi padre es: %d\n",getpid(),getppid());
		mkdir("./MisDocumentos",0700);
		execl("/bin/touch","touch","MisDocumentos/procesos",NULL);
	}
}
