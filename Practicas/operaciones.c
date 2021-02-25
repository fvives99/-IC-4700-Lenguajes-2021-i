#include <stdio.h>
//Declaracion de variables
int main(){
int num1, num2, total;
printf("Ingrese el primer número: ");
//Se registra el primer valor
scanf("%d" ,&num1);
printf("Ingrese el segundo número: ");
//Se registra el segundo valor
scanf("%d" ,&num2);
total = num1 + num2;
//Asigna la suma de ambos valores a la variable total
printf("- La suma de ambos números es %d \n", total);
total = num1 - num2;
//Asigna la resta de ambos valores a la variable total
printf("- La resta de ambos números es %d \n", total);
total = num1 * num2;
//Asigna la multiplicacion de ambos valores a la variable total
printf("- La multiplicación de ambos números es %d \n", total);
total = num1 / num2;
//Asigna la devision de ambos valores a la variable total
printf("- La división de ambos números es %d \n", total);
return 0;
}
