#include <stdio.h>
int main(){
//Se necesita ingresar dos números enteros
int num1, num2, total;
printf("Ingrese el primer número: ");
//Con %d se toma el valor ingresado y &nombre de variable se hace la asignación
scanf("%d" ,&num1);
printf("Ingrese el segundo número: ");
scanf("%d" ,&num2);
/*Tenemos la suma
Seguidamente la resta
Luego la multiplicación 
Y por último la división.
Los resultados de las operaciones se guarda en la variable llamada total
*/
total = num1 + num2;
printf("- La suma de ambos números es %d \n", total);
total = num1 - num2;
printf("- La resta de ambos números es %d \n", total);
total = num1 * num2;
printf("- La multiplicación de ambos números es %d \n", total);
total = num1 / num2;
printf("- La división de ambos números es %d \n", total);
// return 0 es para terminar el programa.
return 0;
}
