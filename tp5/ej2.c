#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

static int contador = 0;
sem_t sem1;

static void *rutina_thread1(){
	for (int i=0; i < 10000; i++){
		sem_wait(&sem1);
		contador += 1;
		sem_post(&sem1);
	}
}

static void *rutina_thread2(){
	for (int i=0; i < 10000; i++){
		sem_wait(&sem1);
		contador -= 1;
		sem_post(&sem1);
	}
}

void main(){

	pthread_t thread1, thread2;

	sem_init(&sem1, 0, 1);

	pthread_create(&thread1, NULL, *rutina_thread1, NULL);
	pthread_create(&thread2, NULL, *rutina_thread2, NULL);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	printf("El valor del contador es %d\n", contador);

}
