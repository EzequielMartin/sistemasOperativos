#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main(){
	int cant;

	printf("Ingrese la cantidad de forks\n");
	scanf("%d",&cant);

	for(int i=1; i<=cant; i++){
		pid_t pid = fork();

		if(pid==0){
			break;
		}else{
			printf("Id del padre: %d\n",getpid());
		}
	}

while(1);
}
