//Hacer un programa en lenguaje C que me permita manejar a través de 2
//procesos distintos (Crear 2 Hilos) la impresión de dos frases:

//a) “Primero aprendo lenguaje C” (hilo 1)
//b) “Segundo tratare de aprender Semaforos” (Hilo 2)

//Como en la realidad no sabemos que hilo se va a ejecutar primero,
//debemos sincronizar a través de un semáforo que primero se ejecute el
//punto a y luego el b

#include <stdio.h>
#include <unistd.h>
#include <semaphore.h>
#include <sys/types.h>
#include <pthread.h>

sem_t sem;

void *rutina_thread1(){
	printf("Primero aprendo lenguaje C\n");
	sem_post(&sem);
}

void *rutina_thread2(){
	sem_wait(&sem);
	printf("Segundo tratare de aprender semaforos\n");
}

void main(){

	pthread_t thread1, thread2;

	sem_init(&sem, 0, 0);

	pthread_create(&thread1, NULL, *rutina_thread1, NULL);
	pthread_create(&thread2, NULL, *rutina_thread2, NULL);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

}

