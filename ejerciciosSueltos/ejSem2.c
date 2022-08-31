//Hacer un programa en lenguaje C que me permita manejar a través de 2
//procesos distintos ( Crear 2 Hilos) una variable llamada “contador“
//inicializada en 0 compartida por ambos hilos, en uno de esos hilo de
//ejecución esa variable se incrementa, y por el otro hilo se decrementa,
//si hacemos por ejemplo 10000 iteraciones en los dos hilos sobre esa misma
//variable contador, y ejecutamos nuestro programa varias veces podremos
//observar que rara vez esa variable queda en 0 como quisiéramos que ocurra.
//Para que esto suceda debemos sincronizar a través de un semáforo la
//ejecución de estos hilos para que dicha variable siempre quede en 0.

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <semaphore.h>
#include <pthread.h>

int cont = 0;

sem_t sem;

void *rutina_thread1(){
	for(int i=0; i<10000; i++){
		sem_wait(&sem);
		cont+=1;
		sem_post(&sem);
	}
}

void *rutina_thread2(){
	for(int i=0; i<10000; i++){
		sem_wait(&sem);
		cont-=1;
		sem_post(&sem);
	}
}

void main(){

	pthread_t thread1, thread2;

	sem_init(&sem, 0, 1);

	pthread_create(&thread1, NULL, *rutina_thread1, NULL);
	pthread_create(&thread2, NULL, *rutina_thread2, NULL);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	printf("El valor del contador es: %d\n", cont);
}
