#include <stdio.h>
int main() {
//Ejercicio de prueba con matriz y punteros
int matriz[3][3];
int *ptr;
int lista[9];

for(int i=0; i<9; i++){
	lista[i] = i + 1;
	}
	
	ptr = lista;
	
	for(int i=0; i<3; i++){
		for(int j=0; j<3; j++){
			matriz[i][j] = *ptr;
			printf("(%d, %p)\n", matriz[i][j], &matriz[i][j]);
			ptr +=1;
		}
	}
return 0;
}
