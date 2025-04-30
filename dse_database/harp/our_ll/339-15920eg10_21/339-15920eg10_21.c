/*************************************************************************
	> File Name: eg10_21.c
	> Author:yunfeng 
    > Des: 可靠地处理信号，避免了竞争条件，不能处理设置的闹钟的交互作用
	> Created Time: Thu 11 Jun 2015 09:28:40 AM CST
 ************************************************************************/
#include<stdio.h>
#include<unistd.h>
#include<signal.h>

// nothing to do, just returning wakes up sigsuspend()
static void sig_alrm(int signo)
{

}

unsigned int Sleep(unsigned int nsecs)
{
    struct sigaction newact;
    struct sigaction oldact;
    sigset_t newmask;
    sigset_t oldmask;
    sigset_t suspmask;
    unsigned int unslept;

    // set our handler, save previous information
    newact.sa_handler = sig_alrm;
    sigemptyset(&newact.sa_mask);
    newact.sa_flags = 0;
    sigaction(SIGALRM, &newact, &oldact);

    // block SIGALRM and save current signal mask
    sigemptyset(&newmask);
    sigaddset(&newmask, SIGALRM);
    sigprocmask(SIG_BLOCK, &newmask, &oldmask);
    alarm(nsecs);

    // make sure SIGALRM isn't blocked and wait for any signal to be caught
    suspmask = oldmask;
    sigdelset(&suspmask, SIGALRM);
    sigsuspend(&suspmask);

    // some signal has been caught,SIGALRM is now blocked 
    
    unslept = alarm(0);

    // reset previous action 
    sigaction(SIGALRM, &oldact, NULL);
    
    // reset signal mask, which unblocks SIGALRM
    sigprocmask(SIG_SETMASK, &oldmask, NULL);

    return (unslept);
}

int main(void)
{
    unsigned int unslept = Sleep(10);
    printf("%u\n", unslept);

    return 0;
}
