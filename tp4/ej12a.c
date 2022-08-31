#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

void main(){

	int cant;

	printf("Ingrese la cantidad de forks que desea\n");
	scanf("%d",&cant);

	pid_t pid;

	for (int i=1; i <= cant; i++){
		pid=fork();
		if(pid == 0){
			printf("Id hijo: %d\n", getpid());
		}else{
			printf("Id padre: %d\n", getpid());
		}
	}
}
