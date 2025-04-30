#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE (5)

// Implement queue with array in C

int q[MAX_QUEUE_SIZE];
int head, tail;

void init_queue() {
    head = -1;  // head "index" of queue, head+1 is the element to be dequeued
    tail = -1;
}

int is_empty() {
    if (head==tail) return 1;
    else return 0;
}

int is_full() {
    if (tail>=head+MAX_QUEUE_SIZE) return 1;
    else return 0;
}

void enqueue(int val) {
    if (is_full()) printf("[Error] Cannot enqueue %d: queue is full!\n", val);
    else {
        tail ++;
        q[tail%MAX_QUEUE_SIZE] = val;
    }
}

void dequeue() {
    if (is_empty()) printf("[Error] Cannot dequeue: queue is empty!\n");
    else {
        head++;
    }
}

void print_queue() {
    if (is_empty()) printf("[Error] Cannot print queue: queue is empty!\n");
    else {
        int i;
        for (i=head+1; i<=tail; i++)
            printf("%d, ", q[i%MAX_QUEUE_SIZE]);
        printf("\n");
    }
}
int main() {
    init_queue();
    print_queue();
    enqueue(1);
    enqueue(2);
    print_queue();
    enqueue(3);
    enqueue(4);
    enqueue(5);
    enqueue(6);
    print_queue();
    dequeue();
    dequeue();
    print_queue();
}
