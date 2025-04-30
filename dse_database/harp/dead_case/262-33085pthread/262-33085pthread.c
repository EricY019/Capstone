/****************************************
*文件名  ：pthread.c                
*创建者  ：Elvin                    
*创建时间：2015.07.02            
*程序说明：该程序主进程创建两线程，线程各自
          让number自增10次后，主进程退出。
******************************************/

#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

pthread_t workerid[2];
int number = 0;
pthread_mutex_t mutex_lock;

void * worker1()
{
    int i;
    printf("I am worker1\n");
    for(i = 0; i < 10; i++)
    {
        pthread_mutex_lock(&mutex_lock);
        number++;
        printf("The worker1's number is: %d\n", number);
        pthread_mutex_unlock(&mutex_lock);
        sleep(1);
    }
    pthread_exit(NULL);
}

void * worker2()
{
    int i;
    printf("I am worker2\n");
    for(i = 0; i < 10; i++)
    {
        pthread_mutex_lock(&mutex_lock);
        number++;
        printf("The worker2's number is: %d\n", number);
        pthread_mutex_unlock(&mutex_lock);
        sleep(1);
    }
    pthread_exit(NULL);
}

int main()
{
    /* 0.初始化线程互斥锁 */
    pthread_mutex_init(&mutex_lock, NULL);
    /* 1.创建线程1 */
    pthread_create(&workerid[0], NULL, worker1, NULL);
    /* 2.创建线程2 */
    pthread_create(&workerid[1], NULL, worker2, NULL);
    /* 3.等待线程1 */
    pthread_join(workerid[0], NULL);
    /* 4.等待线程2 */
    pthread_join(workerid[1], NULL);

    return 0;
}
