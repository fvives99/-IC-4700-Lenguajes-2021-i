#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){
int z=1;

int *ptr = NULL;
ptr = &z;
int a[10][10];
for(int i=0;i<3;i++){
for(int j=0;j<3;j++){
a[i][j]=*ptr;
printf("\t %d %p",a[i][j],&a[i][j]);
*ptr+=1;
}

printf("\n");
}

return 0;
}
