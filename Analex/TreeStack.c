
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "TreeStack.h"


int creaStackT(ElementoT **stack){
	*stack = 0;
	return TRUE;
}

int delStackT(ElementoT **stack){
	ElementoT *next = 0;
	while(*stack){
		next = (*stack)->next;
		free(*stack);
		*stack = next;
	}
	return TRUE;
}

int pushT(ElementoT **stack, NodoArbol * arbol){
	ElementoT *new = malloc(sizeof(ElementoT));
	if(!new) return FALSE;
	new->arbol = arbol;
	new->next = *stack;
	*stack = new;
	return TRUE;
}

int popT(ElementoT **stack, NodoArbol ** arbol){
	ElementoT *ElementoT;
	if(!(ElementoT=*stack)) return FALSE;
	*arbol = ElementoT->arbol;
	*stack = ElementoT->next;
	free(ElementoT);
	return TRUE;
}

int topT(ElementoT **stack, NodoArbol ** arbol){
	ElementoT *ElementoT;
	if(!(ElementoT=*stack)) return FALSE;
	*arbol = ElementoT->arbol;
	return TRUE;
}

void printRecT(ElementoT * elem){
	if(!elem) return;
	if(elem->next){
		printRecT(elem->next);
	}
	printArbol(&(elem->arbol));
}

void printStackT(ElementoT ** stack){
	if(!stack) return;
	printRecT(*stack);
	printf("\n");
}
