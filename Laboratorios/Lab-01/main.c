#include <stdio.h>
#include <stdlib.h>

struct nodo{
	char dato;
	struct nodo *izquierdo;
	struct nodo *derecho;
	struct palabra * next;
};

struct palabra{
    char *nombre;
    char *significado;
    struct palabra* next;
};


typedef struct nodo Nodo;
typedef struct palabra palabra;

Nodo *raiz = NULL;

void insertar(char dato)
{
    Nodo *nuevo;
    nuevo=malloc(sizeof(Nodo));

	nuevo->dato = dato;
    nuevo->izquierdo = NULL;
    nuevo->derecho = NULL;

	if (raiz == NULL)
        raiz = nuevo;
    else{
        Nodo *recorrido, *anterior ;

		anterior = NULL;
        recorrido = raiz;

		while (recorrido != NULL)
        {
            anterior = recorrido;
            if (dato < recorrido->dato)
                recorrido = recorrido->izquierdo;
            else
                recorrido = recorrido->derecho;
        }
        if (dato < anterior->dato)
            anterior->izquierdo = nuevo;
        else
            anterior->derecho = nuevo;
    }
}

void inOrden(Nodo *raiz){
		if(raiz != NULL){
			inOrden(raiz->izquierdo);
			//printf("{%i}",raiz->dato);
			inOrden(raiz->derecho);
	}
}

int buscar(nodo *raiz, char *nombre) {
	Nodo *reco;
	reco = raiz;
	while (reco != NULL) {
		if (valor == reco->dato){
			printf("Nodo encontrado");
			return;
		} else if (valor >reco->dato){
			reco = reco->derecho;
		}else{
			reco = reco->izquierdo;
		}
	}
	printf("ERROR: Palabra no encontrada");
	return;
}


void menu(){
	printf("1 - Agregar palabra y significado.\n");
	printf("2 - Buscar significado de palabra.\n");
	printf("3 - Imprimir todo el diccionario.\n");
	printf("4 - Salir.\n");
}

int main(){

	char *nombre;
	char *significado;
	char input1[100];
	char input2[250];
	int opcion = 0;


	do{
		memset(input1, 0, sizeof(input1));
		memset(input1, 0, sizeof(input2));

		menu();
		printf("Ingrese una opcion valida: \n");
		scanf("%d",&opcion);
		getchar();
		switch(opcion)
		{
		case 1:
			printf("\nPalabra a guardar: ");
			fgets(input1, 100, stdin);
			nombre = strdup(input1);

			printf("Significado de la palabra: ");
			fgets(input2, 250, stdin);
			significado = strdup(input2);

			printf("\n");
			if(raiz == NULL)
				raiz = insertar(raiz, (char)nombre[0]);
			else
				insertar(raiz, (char)nombre[0]);

			palabra * nueva = crear_palabra(nombre, significado);
			nodo_ab * hoja = buscar_nodo(raiz,(char)nombre[0]);
			insertar_palabra(nueva, hoja);

			break;

		case 2:
			printf("Palabra a buscar: ");
			fgets(input1, 100, stdin);
			nombre = strdup(input1);

			buscar(raiz, nombre);

			break;

		case 3:
			inOrden(raiz);
			break;

		case 4:
			break;
		}
	} while(opcion != 4);


	return 0;
}
