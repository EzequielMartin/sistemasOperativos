#include <stdio.h>

void main(){

int v[10];
int valor,aux;

for (int i = 0;i <= 9; i++){
	printf("Ingrese el valor %d\n", i+1);
	scanf("%d", &valor);
	v[i]=valor;
}

for (int i = 0;i <= 9; i++){
	for (int j = i+1;j <= 9; j++){
		if (v[j] < v[i]){
			aux = v[i];
			v[i] = v[j];
			v[j] = aux;
		}
	}
}

for (int i = 0;i <= 9; i++){
	printf("Valor de v[%d] = %d\n",i,v[i]);
}

}
