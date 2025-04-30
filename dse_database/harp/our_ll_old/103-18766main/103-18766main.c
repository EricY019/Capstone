#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

// index, size, data
// [0, 0, 0, 0, 0]
// [0, -1, -2, -3, -4 ...]

struct vector_t {
    int *data;
    int index, size;
};

void vector_init(struct vector_t*);
void vector_destroy(struct vector_t*);
int vector_get_size(struct vector_t);
int vector_resize(struct vector_t* v,int);
int vector_at(struct vector_t, int);
void vector_push_back(struct vector_t*, int);
int vector_pop_back(struct vector_t*);
void vector_copy(struct vector_t*, struct vector_t*);

int main() {
    struct vector_t myVector, secondVector;

    vector_init(&myVector);

    vector_push_back(&myVector,3);
    vector_push_back(&myVector,1);
    vector_push_back(&myVector,4);
    vector_push_back(&myVector,1);
    vector_push_back(&myVector,5);
    vector_push_back(&myVector,9);
    vector_push_back(&myVector,2);
    vector_push_back(&myVector,6);

    vector_copy(&myVector, &secondVector);
    printf("Size of copied vector: %d\n", vector_get_size(secondVector));

    printf("Size: %d\n", vector_get_size(myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Size: %d\n", vector_get_size(myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Pop: %d\n", vector_pop_back(&myVector));
    printf("Size: %d\n", vector_get_size(myVector));

    vector_destroy(&myVector);
    return 0;
}

void vector_init(struct vector_t* v) {
    v->size = 5;
    v->index = 0;
    v->data = (int*) malloc(v->size * sizeof(int));
}

void vector_destroy(struct vector_t* v){
    free(v->data);
    v->size = 0;
    v->index = 0;
}

int vector_get_size(struct vector_t v) {
    return v.index;
}

void vector_push_back(struct vector_t* v, int value) {
    if(v->index >= v->size)
    {
        vector_resize(v, 0);
    }
    v->data[v->index++] = value;
}

int vector_at(struct vector_t v, int index) {
    if(index < 0 || index >= v.index)
    {
        return INT_MAX;
    }

    return v.data[index];
}

int vector_pop_back(struct vector_t* v) {
    if(v->index <= 0)
    {
        return INT_MAX;
    }
    if(v->index <= v->size / 2)
    {
        vector_resize(v, 1);
    }

    return v->data[--v->index];
}

int vector_resize(struct vector_t* v, int makeLower)
{
    int i;
    int oldData[v->size];

    for(i = 0; i < v->index; i++)
    {
        oldData[i] = vector_at(*v,i);
    }

    if(makeLower==0)
    {
        v->size *= 2;
    }
    else
    {
        v->size /= 2;
    }

    free(v->data);
    v->data = (int*) malloc(v->size * sizeof(int));

    for(i = 0; i < v->index; i++)
    {
        v->data[i] = oldData[i];
    }

    return v->size;
}

void vector_copy(struct vector_t* from, struct vector_t* to)
{
    vector_init(to);
    int i;

    for(i=0; i<vector_get_size(*from); i++)
    {
        vector_push_back(to,vector_at(*from,i));
    }
}
