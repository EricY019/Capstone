#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

void* threadMainFunction1(void*);
void* threadMainFunction2(void*);

int main()
{
  pthread_t idThread1, idThread2, idThread3; //creamos las variables para los hilos

  printf("creating threads ......\n");
  pthread_create(&idThread1, NULL, threadMainFunction1, (void*) 1); //creamos los hilos y les decimos en que variable tiene que estar
  pthread_create(&idThread2, NULL, threadMainFunction1, (void*)2); // el (void*)2 es el atributo que se le pasa al a funcion que se crea abajo
  pthread_create(&idThread3, NULL, threadMainFunction2, (void*)"kuku");
  pthread_join (idThread1, NULL); // es buena practica cerrar los hilos, sobre todo en esta clase
  pthread_join (idThread2, NULL);
  pthread_join (idThread3, NULL);
  printf("Threads finished. Main going to finish \n");
  return 0;
}

void *threadMainFunction1 (void *arg) // este argumeto no es un void real ya que luego se castea a int. Realmente es un int
{
  int i, j,  n = (int) arg;
  
  for (i=0;i<10;i++)
  {
    sleep(1); //en segundos
    for(j=0;j<n;j++) printf("\t\t");
    printf (" ...... %d ...........\n", n);
  }
  return NULL;
}

void *threadMainFunction2 (void *arg) 
// este argumeto no es un void real ya que luego se castea a char (string). tiene que ser del tipo del dato que le pones cuando lo creas
{
  int i;
  char* pStr= (char*)arg;
  
  for(i=0;i<5;i++)
  {
    sleep(2);
    printf("%s\n", pStr);
  }
  return NULL;
}
