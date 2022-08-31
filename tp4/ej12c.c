#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

void main(){

	int cant;
	pid_t pid;
	printf("Ingrese la cantidad de forks\n");
	scanf("%d",&cant);

	pid = fork();

	for(int i=1; i<=cant; i++){
		if(pid == 0){
			printf("Id del padre: %d\n",getppid());
			printf("Id del hijo: %d\n", getpid());
			pid = fork();
		}else{
			break;
		}
	}
}
