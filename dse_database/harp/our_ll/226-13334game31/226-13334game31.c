/* Copyright (c) 2014 Andrew Cleland and Gina Fitzgerald 
    Game of 31 Assignment for PSU New Beginnings Fall 2014 */ 

#include <stdio.h>
#include <stdlib.h>

typedef struct node_t {
    int turnNum;
    int sum;
    int cardsLeft[7];  // so that for example, cardsLeft[4] = number of 4s left
    struct node_t* parent;
    struct node_t* child[7];
    } node;


void nodeCreate(node* parent, int cardNum){
    node* nodeNew = (node*)(malloc(sizeof(node)));
    if (parent != NULL){
        // Connect parent and child
        nodeNew->parent = parent;
        parent->child[cardNum] = nodeNew;

        // Update game variables
        nodeNew->turnNum = parent->turnNum + 1;
        nodeNew->sum = parent->sum + cardNum;
        for (int i = 1; i < 7; i++){
            nodeNew->cardsLeft[i] = parent->cardsLeft[i];
        }
        nodeNew->cardsLeft[cardNum] -= 1; 
    }
    else {  // If creating the root node...
        // Then it has no parent
        nodeNew->parent = NULL;
        
        // In the beginning of the game, there are four of each type of card.
        for (int i = 1; i < 7; i++){
            nodeNew->cardsLeft[i] = 4;
        }
        // then player A plays a card
        nodeNew->cardsLeft[cardNum] -= 1;
        nodeNew->sum = cardNum;
        
        // This is turn 0. 
        nodeNew->turnNum = 0; 
    }
}



int main(){

    //FILE* f1 = fopen("gamedata.txt", "r");
    


    return 0;
}
