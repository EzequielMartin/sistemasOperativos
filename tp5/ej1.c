#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <semaphore.h>

sem_t sem1;

void *rutina_thread1(){
	printf("Primero aprendo lenguaje C\n");
	sem_post(&sem1);
}

void *rutina_thread2(){
	sem_wait(&sem1);
	printf("Segundo tratare de aprender Semaforos\n");
}

void main(){

	pthread_t thread1, thread2;

	sem_init(&sem1, 0, 0);
	// Los parametros son:
	// 1- Puntero al semaforo,
	// 2- Si el semaforo esta compartido entre procesos (1) o si no (0, solo compartido entre hilos de 1 solo proceso),
	// 3- Valor inicial del semaforo, notar que cuando vale 0 no se ejectutara el hilo.

	pthread_create(&thread1, NULL, *rutina_thread1, NULL);
	pthread_create(&thread2, NULL, *rutina_thread2, NULL);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

}
