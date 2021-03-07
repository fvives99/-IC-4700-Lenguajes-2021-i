#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct palabra
{
    char *nombre;
    char *significado;
    struct palabra* next;
};

struct nodo
{
	char letra;
	struct nodo * izquierdo;
	struct nodo * derecho;
	struct palabra * next;
};

typedef struct palabra palabra;
typedef struct nodo nodo;

nodo * raiz;


void inOrden_word(nodo * raiz);
void inOrden(nodo * raiz);

nodo* buscar_nodo(nodo * raiz, char letra);
void buscar(nodo * raiz, char *nombre);

nodo * crear_nodo(char letra)
{
    nodo * reco  = (nodo*) malloc(sizeof(nodo));
    reco->letra = letra;
    reco->izquierdo = reco->derecho = NULL;
    return reco;
}

nodo * insertar(nodo * raiz, char letra)
{
    nodo *nuevo;
    nuevo=malloc(sizeof(nodo));

	nuevo->letra = letra;
    nuevo->izquierdo = NULL;
    nuevo->derecho = NULL;

	if (raiz == NULL)
        raiz = nuevo;
    else{
        nodo *recorrido, *anterior ;

		anterior = NULL;
        recorrido = raiz;

		while (recorrido != NULL)
        {
            anterior = recorrido;
            if (letra < recorrido->letra)
                recorrido = recorrido->izquierdo;
            else
                recorrido = recorrido->derecho;
        }
        if (letra < anterior->letra)
            anterior->izquierdo = nuevo;
        else
            anterior->derecho = nuevo;
    }
}

nodo* buscar_nodo(nodo * raiz, char letra)
{
    if(raiz == NULL || raiz->letra == letra)
        return raiz;
    else if(letra > raiz->letra)
        return buscar_nodo(raiz->derecho, letra);
    else
        return buscar_nodo(raiz->izquierdo,letra);
}

void inOrden(nodo * raiz)
{
    if (raiz != NULL) {
            inOrden(raiz->izquierdo);
            printf("Letra: %c\n", raiz->letra);
            inOrden_word(raiz);
            inOrden(raiz->derecho);
    }
}

void inOrden_word(nodo * raiz)
{
    if (raiz->next != NULL) {
    	palabra * reco = raiz->next;
    	while(reco != NULL)
    	{
    		printf("Nombre: %sSignificado: %s\n", reco->nombre, reco->significado);
    		reco = reco->next;
    	}
	}

}

palabra * crear_palabra(char *nombre, char *significado)
{
    palabra * reco  = (palabra*) malloc(sizeof(palabra));
    reco->nombre = nombre;
    reco->significado = significado;
    reco->next = NULL;
    return reco;
}


void insertar_palabra(palabra* palabra, nodo * hoja)
{
	palabra->next = hoja->next;
	hoja->next = palabra;
}


void buscar(nodo * raiz, char *nombre)
{
	nodo * hoja = buscar_nodo(raiz, nombre[0]);
	if(hoja != NULL)

	{
		int result = 0;
		palabra * reco = hoja->next;
			while(reco != NULL)
			{
				result = strcmp(nombre, reco->nombre);
		        if(result == 0)
		        {
		        	printf("\nSeccion: %c\n", hoja->letra);
		        	printf("Nombre: %sSignificado: %s", reco->nombre, reco->significado);
		        	return;
		        }
		        else
		        	reco = reco->next;
			}
			printf("ERROR: Palabra no encontrada");

	}
}

void menu(){
	printf("\n1 - Agregar palabra y significado\n");
	printf("2 - Buscar significado de palabra\n");
	printf("3 - Imprimir todo el diccionario\n");
	printf("4 - Salir\n");
	printf("5 - Limpiar pantalla\n");

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
			printf("Palabra a guardar: ");
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
			nodo * hoja = buscar_nodo(raiz,(char)nombre[0]);
			insertar_palabra(nueva, hoja);

			break;

		case 2:
			printf("\nPalabra a buscar: ");
			fgets(input1, 100, stdin);
			nombre = strdup(input1);
			buscar(raiz, nombre);
			break;

		case 3:
			inOrden(raiz);
			break;

		case 4:
            break;

		case 5:
			system("cls");
			break;

		}
	} while(opcion != 4);


	return 0;
}


