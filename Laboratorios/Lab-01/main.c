#include <stdio.h>
#include <stdlib.h>

struct nodo{
	int dato;
	struct nodo *izquierdo;
	struct nodo *derecho;
};

typedef struct nodo Nodo;

Nodo *raiz = NULL;

void insertar(int dato)
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
			printf("{%i}", raiz->izquierdo);
			inOrden(raiz->dato);
			inOrden(raiz->derecho);
	}
}

int buscar(int valor) {
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
	printf("Nodo no encontrado");
	return;
}

int main() {
	insertar(1);
    insertar(2);
    insertar(3);
    insertar(4);
    insertar(5);
	insertar(6);
    insertar(7);
    insertar(8);
    insertar(9);
    insertar(10);

    printf("Impresion inorden: ");
    inOrden(raiz);
    printf("\n");

	buscar(8);
	return 0;
}
