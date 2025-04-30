/*
 * waitToWork.c
 *
 *  Created on: Dec 3, 2014
 *      Author: udang
 *	How to make
 function udmake(){
 	 gcc -o waitToWork waitToWork.c -lpthread
 }
 */
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <errno.h>		//for EINTR
#include <semaphore.h> 	//for sem_t

#define LOCK(x)     semaWait( &gResSema, x)
#define UNLOCK(x)   semaRelease( &gResSema, x )

static sem_t gResSema;
int semaCreate( sem_t* sem, int initialCount )
{
   int  rc;
   rc = sem_init( sem, 0, initialCount );
   return rc;
}

void semaDestroy( sem_t* sem )
{
   sem_destroy( sem );
   return;
}

int semaWait( sem_t* sem, char *name )
{
	int  rc;
	do
	{
	   printf("[Work_%s] - is waiting for Resource\n", name);
	   rc = sem_wait( sem );
	}while(( -1 == rc ) && ( EINTR == errno ));
	printf("[Work_%s] - is keeping resource\n", name);
   return rc;
}

int semaRelease( sem_t* sem, char *name)
{
   int rc;
   rc = sem_post( sem );
   printf("[Work_%s] - Release Resource\n", name);
   return rc;
}


int gResource = 0;

typedef struct
{
	pthread_t	threadID;
	char		name[10];
	int 		time; 	//in sec to do a work
	int			target;	//result need
}SWorker;


/*
 * WorkerA will work with gResource in 3 sec
 */
void Work(SWorker *person)
{
	LOCK(person->name);
	printf("[%s_%s] - Begin transaction, target = %d and work with in %d sec\n", __FUNCTION__,person->name, person->target, person->time);
	sleep(person->time);
	gResource = person->target;
	printf("[%s_%s] - End transaction, Resource = %d and target = %d \n", __FUNCTION__,person->name, gResource, person->target);
	UNLOCK(person->name);
}

void *DoWork(void *param)
{
	SWorker *worker = (SWorker*)param;
	Work(worker);
	return NULL;
}

pthread_t DoAWork(SWorker *person)
{
	pthread_t var_thread;
	pthread_create(&var_thread, NULL, DoWork, (void*)person);
	return var_thread;
}

void ExampleWithSema()
{
	semaCreate(&gResSema, 1);

	SWorker workerA = {0, "A", 10, 10};
	workerA.threadID = DoAWork(&workerA);

	SWorker workerB = {0, "B", 4, 11};
	workerB.threadID = DoAWork(&workerB);


	SWorker workerC = {0, "C", 2, 11};
	workerC.threadID = DoAWork(&workerC);

	pthread_join(workerA.threadID, NULL);
	pthread_join(workerB.threadID, NULL);
	pthread_join(workerC.threadID, NULL);

	semaDestroy(&gResSema);
}

int main()
{
	ExampleWithSema();
	return 0;
}

/*
 * Output when do not use sem
 	[Work_A] - Begin transaction, please wait for me 5 sec
	[Work_B] - Begin transaction, please wait for me 2 sec
	[Work_B] - End transaction with real = 11 and result = 11
	[Work_A] - End transaction with real = 10 and result = 10
 * Output when do use sem
	[Work_A] - is waiting for Resource
	[Work_A] - is keeping resource
	[Work_A] - Begin transaction, target = 10 and work with in 10 sec
	[Work_B] - is waiting for Resource
	[Work_C] - is waiting for Resource
	[Work_A] - End transaction, Resource = 10 and target = 10
	[Work_A] - Release Resource
	[Work_B] - is keeping resource
	[Work_B] - Begin transaction, target = 11 and work with in 4 sec
	[Work_B] - End transaction, Resource = 11 and target = 11
	[Work_B] - Release Resource
	[Work_C] - is keeping resource
	[Work_C] - Begin transaction, target = 11 and work with in 2 sec
	[Work_C] - End transaction, Resource = 11 and target = 11
	[Work_C] - Release Resource
 */
