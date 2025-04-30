#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define  PATH_L 100
#define  CUBE_L 24
#define  PATH_STOP 65535

int L_value = 11;


void initial(int * cube){
    int i;
    for(i=0;i<CUBE_L;i++){
        cube[i]=i/4;
    }
    return;
}

void cube_copy(int * a, int * b){
    int i;
    for(i=0;i<CUBE_L;i++)
        b[i]=a[i];
}

void four_swap(int* a,int *b , int * tu ,int type) {
    if ( type==1 ) 
        b[tu[0]]=a[tu[1]], b[tu[1]]=a[tu[2]], b[tu[2]]=a[tu[3]], b[tu[3]]=a[tu[0]];
    else if (type==0) 
        b[tu[0]]=a[tu[3]], b[tu[3]]=a[tu[2]], b[tu[2]]=a[tu[1]], b[tu[1]]=a[tu[0]];
    else if (type==2) 
        b[tu[0]]=a[tu[2]], b[tu[2]]=a[tu[0]], b[tu[1]]=a[tu[3]], b[tu[3]]=a[tu[1]];
}

int R_T1[4]={8,9,11,10};
int R_T2[4]={1,7,19,15};
int R_T3[4]={5,17,13,3};
void R_raw (int * a , int * b ,int type) {
    four_swap(a,b,R_T1,type);
    four_swap(a,b,R_T2,type);
    four_swap(a,b,R_T3,type);
}
void R  (int * a , int * b ) {
    R_raw(a,b,0);
}
void R2 (int * a , int * b ) {
    R_raw(a,b,2);
}
void R_r(int * a , int * b ) {
    R_raw(a,b,1);
}

int U_T1[4]={5,4,6,7}   ;
int U_T2[4]={1,20,16,9} ;
int U_T3[4]={0,21,17,8} ;
void U_raw (int * a , int * b ,int type) {
    four_swap(a,b,U_T1,type);
    four_swap(a,b,U_T2,type);
    four_swap(a,b,U_T3,type);
}
void U  (int * a , int * b ) {
    U_raw(a,b,0);
}
void U2 (int * a , int * b ) {
    U_raw(a,b,2);
}
void U_r(int * a , int * b ) {
    U_raw(a,b,1);
}

int F_T1[4]={0,1,3,2};
int F_T2[4]={5,10,14,20};
int F_T3[4]={4,8,15,22};
void F_raw (int * a , int * b ,int type) {
    four_swap(a,b,F_T1,type);
    four_swap(a,b,F_T2,type);
    four_swap(a,b,F_T3,type);
}
void F  (int * a , int * b ) {
    F_raw(a,b,0);
}
void F2 (int * a , int * b ) {
    F_raw(a,b,2);
}
void F_r(int * a , int * b ) {
    F_raw(a,b,1);
}

typedef void (*turn_type)(int * a, int *b);
turn_type  Turn[9]={R,U,F,R_r,U_r,F_r,R2,U2,F2};
turn_type  Rev[9] ={R_r,U_r,F_r,R,U,F,R2,U2,F2};
//char       TurnStr[9][3]={"R","U","F","R'","U'","F'","R2","U2","F2"};
int        Free=9;

typedef struct CUBE_TREE TREE;
struct CUBE_TREE {
    TREE * mother;
    TREE * daughter[6];
    int    cube[CUBE_L];
    int    sex;
    int    depth;
};

#define MAX_DEPTH 9
int add_leaf(TREE* pm){
    int turntype;
    int dn=0;
    TREE * pd  ;

    if (pm->depth>=MAX_DEPTH)
        return 0;
    for(turntype=0 ; turntype<Free ; turntype++){
        if (turntype%3==pm->sex%3)
            continue;
        pd = (TREE *)malloc(sizeof(TREE));
        pm->daughter[dn]=pd;
        pd->mother=pm;
        pd->sex=turntype;
        pd->depth=pm->depth+1;
        cube_copy(pm->cube,pd->cube);
        Turn[turntype](pm->cube,pd->cube);
        add_leaf(pd);
        dn++;
    }
    return 1;
}

int main(int argc , char * argv[]) {
    int i;
    TREE * ptree;
    TREE * pd;
    
    ptree = ( TREE *)malloc(sizeof(TREE));
    ptree->mother = NULL;
    ptree->depth  = 0;
    ptree->sex    = 1;
    initial(ptree->cube);
    add_leaf(ptree);
    sleep(10);

}
    
