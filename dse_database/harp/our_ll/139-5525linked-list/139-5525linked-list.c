/*
Trabalho I: em dupla. 

Dada as funções da classe abaixo implemente-as no paradigmas
imperativo, como do programa acima; não use recursividade, 
caminhe na lista com comandos iterativos; 

programe o imprimir lista, com esta saida: [1,3,4,5,7,9]; 
depois responda as perguntas abaixo.
antes de cada uma destas perguntas exiba a lista; 
depois rode a ação; 
se ação é sobre a lista exiba novamente a lista;

1) cria a lista com insere inicio [1,3,4,5,7,9];
2) mostre o tamanho da lista;
3) remova o fim;
4) insira o 11 no final;
5) mostre qual é a posição do valor 5; 
6) insira o 6 na sua posição mantendo a ordem da lista;
7) remova o item valor 4;
8) remova duas vezes inicio;
9) cria a lista com insere fim[1,3,4,5,7,9];
10)inverta a lista;
*/

#include <stdio.h>
#include <stdlib.h>


typedef struct node
{
    int value;
    struct node *next;
} node;

// typedef node *list;

void make_list (node *head)
{
    head = NULL;
}

int is_empty (node *head)
{
    if (head == NULL)
        return 1;
    return 0;
}

void print_list (node *head)
{
    while(head != NULL)
   {
        printf("%d ", head->value);
        head = head->next;
   }
    printf ("\n");
}

void insert_begin(node **head, int value)
{
    if (is_empty(*head))
    {
        *head = (node *)malloc(sizeof(node));
        (*head)->value = value;
        (*head)->next = NULL;
    }
    else
    {
        node *new_head = (node *)malloc(sizeof(node));
        new_head->value = value;
        new_head->next = *head;
        *head = new_head;
    }
}

void insert_end(node **list, int value)
{
    node *head = *list;
    if (is_empty(head))
    {
        head = (node *)malloc(sizeof(node));
        head->value = value;
        head->next = NULL;
        *list = head;
    }
    else
    {
        while(!is_empty(head->next))
           head = head->next;
        head->next = (node *)malloc(sizeof(node));
        head = head->next;
        head->value = value;
        head->next = NULL;
    }
}

void length_list(node *head)
{
    int length = 0;
    while (!is_empty(head))
    {
        length++;
        head = head->next;
    }
    printf("%d\n", length);
}

void remove_end_list(node *head)
{
    while(!is_empty(head->next->next))
        head = head->next;
    free(head->next);
    head->next = NULL;
}

void find_position(node *head, int position)
{
    while(position != 0)
    {
        head = head->next;
        position--;
    }
    printf("%d\n", head->value);
}

void insert_orderned(node **list, int value)
{
    node *head = *list;
        while(head->next->value <= value && head->next != NULL)
            head = head->next;
        node *new_node = (node *)malloc(sizeof(node));
        new_node->value = value;
        new_node->next = head->next;
        head->next = new_node;
}

void remove_value(node **list, int value)
{
    node *ref, *head = *list;
    while(head->next->value != value && head->next != NULL)
        head = head->next;
    if(is_empty(head->next))
        printf("Not found this value");
    else
    {
        ref = head->next;
        head->next = ref->next;
        free(ref);
        ref = NULL;
    }
}

void remove_begin(node **list)
{
    node *head = *list;
    *list = (*list)->next;
    free(head);
    head = NULL;
}

void reverse_list(node **list)
{
    node *ref = *list;
    node *new_list = NULL;
    while(!is_empty(ref))
    {
        insert_begin(&new_list, ref->value);
        *list = (*list)->next;
        free(ref);
        ref = *list;
    }
    *list = new_list;
}


int main()
{
    node *list = NULL;

    insert_begin(&list, 9);
    insert_begin(&list, 7);
    insert_begin(&list, 5);
    insert_begin(&list, 4);
    insert_begin(&list, 3);
    insert_begin(&list, 1);

    printf("The first list is:\n");
    print_list(list);

    printf("The length list is:\n");
    length_list(list);

    remove_end_list(list);
    printf("The list without last element is\n");
    print_list(list);

    insert_end(&list, 11);
    printf("The list with last element being 11 is:\n");
    print_list(list);

    printf("The index 5 in the list is:\n");
    find_position(list, 5);


    insert_orderned(&list, 6);
    printf("The list with value 6 addicioned is:\n");
    print_list(list);
    
    remove_value(&list, 4);
    printf("The list without value 4 is:\n");
    print_list(list);

    remove_begin(&list);
    remove_begin(&list);
    printf("The list with twice begin removed:\n");
    print_list(list);

    node *list2 = NULL;
    insert_end(&list2, 1);
    insert_end(&list2, 3);
    insert_end(&list2, 4);
    insert_end(&list2, 5);
    insert_end(&list2, 7);
    insert_end(&list2, 9);

    printf("The second list is:\n");
    print_list(list2);

    reverse_list(&list2);
    printf("The list 2 reversed is:\n");
    print_list(list2);


    return 0;
}
