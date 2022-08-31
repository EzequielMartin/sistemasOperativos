#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

void main(){

	pid_t pid;
	int id1Hijo;
	int cant;

	printf("Ingrese la cantidad de forks\n");
	scanf("%d",&cant);

	pid = fork();

	if(pid == 0){
		id1Hijo = getpid();

		printf("Id del proceso creador: %d\n",getpid());

		for(int i=1;i<=cant;i++){
			if(getpid()==id1Hijo){
				pid = fork();
				if(pid == 0){
					printf("Id de proceso padre: %d\n",getppid());
					printf("Id de proceso: %d\n",getpid());

				}
			}
		}
	}
}
