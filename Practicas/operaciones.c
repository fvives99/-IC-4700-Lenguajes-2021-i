#include <stdio.h>
int main(){
int num1, num2, total;
printf("Ingrese el primer número: ");
scanf("%d" ,&num1);
printf("Ingrese el segundo número: ");
scanf("%d" ,&num2);
total = num1 + num2;
printf("- La suma de ambos números es %d \n", total);
total = num1 - num2;
printf("- La resta de ambos números es %d \n", total);
total = num1 * num2;
printf("- La multiplicación de ambos números es %d \n", total);
total = num1 / num2;
printf("- La división de ambos números es %d \n", total);
return 0;
}
