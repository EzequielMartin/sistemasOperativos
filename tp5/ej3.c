#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

static int cont = 0;
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

static void *rutina_thread1(){
	for (int i=0; i < 10000; i++){
		pthread_mutex_lock(&mutex);
		cont += 1;
		pthread_mutex_unlock(&mutex);
	}
}

static void *rutina_thread2(){
	for (int i=0; i < 10000; i++){
		pthread_mutex_lock(&mutex);
		cont -=1;
		pthread_mutex_unlock(&mutex);
	}
}

void main(){

	pthread_t thread1, thread2;

	pthread_create(&thread1, NULL, rutina_thread1, NULL);
	pthread_create(&thread2, NULL, rutina_thread2, NULL);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	printf("El valor del contador es %d\n", cont);

}
