#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){
// Se declara la variable que se utilizara como contador
int z=1;
// Se inicia el puntero en NULL para que no utilice basura
int *ptr = NULL;
ptr = &z;
int a[10][10];
for(int i=0;i<3;i++){
for(int j=0;j<3;j++){
a[i][j]=*ptr;
// Se imprime su el numero de la matriz junto con su direccion de memoria
printf("\t %d %p",a[i][j],&a[i][j]);
*ptr+=1;
}

printf("\n");
}

return 0;
}
