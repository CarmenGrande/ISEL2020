#include <stdio.h>
#include "fsm.h"
#include <stdlib.h>
#include <time.h>
#include <termios.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <sys/select.h>
#include "alarma.h"
#include "bombilla.h"
#include "codigo.h"


fsm_t* fsm;
bombilla_t* fsm_bombilla;
alarma_t* fsm_alarma ;
codigo_t* fsm_codigo;

/* TIME MANAGEMENT */
int timespec_less (struct timespec* a, struct timespec* b);
void timespec_add (struct timespec* res, struct timespec* a, struct timespec* b);
void timespec_sub (struct timespec* res, struct timespec* a, struct timespec* b);

int timespec_less (struct timespec *a, struct timespec *b)
{
  return (a->tv_sec < b->tv_sec) ||
    ((a->tv_sec == b->tv_sec) && (a->tv_nsec < b->tv_nsec));
}

void timespec_sub (struct timespec *res, struct timespec *a, struct timespec *b)
{
	res->tv_sec = a->tv_sec - b->tv_sec;
	res->tv_nsec = a->tv_nsec - b->tv_nsec;
	if (res->tv_nsec < 0) {
		--res->tv_sec;
		res->tv_nsec += 1000000000;
	}
}
void timespec_add (struct timespec *res, struct timespec *a, struct timespec *b)
{
	res->tv_sec = a->tv_sec + b->tv_sec;
	res->tv_nsec = a->tv_nsec + b->tv_nsec;
	if (res->tv_nsec > 1000000000) {
		++res->tv_sec;
		res->tv_nsec -= 1000000000;
	}
}
void delay_until (struct timespec* next_activation)
{
	struct timespec resto, now;
	clock_gettime(CLOCK_REALTIME, &now);
	timespec_sub(&resto, next_activation, &now);
	while (nanosleep(&resto,&resto)>0);
}


/* Toma de Datos */


int key_pressed (void)
{
  struct timeval timeout = { 0, 0 };
  fd_set rd_fdset;
  FD_ZERO(&rd_fdset);
  FD_SET(0, &rd_fdset);
  return select(1, &rd_fdset, NULL, NULL, &timeout) > 0;
}
void key_process (int ch)
{
  switch (ch) {
  case 'a': ((fsm_alarma->flags_key) |= FLAG_EA); break;
  case 'z': ((fsm_alarma->flags_key) |= FLAG_EA2); break;
  case 'b': ((fsm_bombilla->flags_key) |= FLAG_EB); break;
  case 'c': ((fsm_codigo->flags_key) |= FLAG_EC); break;
  

	case 'q':
		
		
		exit(0); break;
  }
}

static void bombilla (void* ignore) {

    portTickType period =  100 /portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();

    while (1) {
        fsm_fire((fsm_t*) fsm_bombilla);
        vTaskDelayUntil (&last, period);
    }
}

static void key (void* ignore) {

    portTickType period =  10 /portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();

    while (1) {
        if (key_pressed())
          key_process(getchar());
        vTaskDelayUntil (&last, period);
    }
}

static void alarma (void* ignore) {

    portTickType period =  10 /portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    while (1) {
        fsm_fire((fsm_t*) fsm_alarma);
        vTaskDelayUntil (&last, period);
    }
}
static void codigo (void* ignore) {

    portTickType period =  10 /portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    while (1) {
        fsm_fire((fsm_t*) fsm_codigo);
        vTaskDelayUntil (&last, period);
    }
}

void user_init (void) {
    xTaskHandle  task_codigo, task_alarma, task_bombilla, task_key;

    
    xTaskCreate (bombilla, (const signed char*) "luces", 2048, NULL, 1, &task_bombilla);
    xTaskCreate (alarma, (const signed char*) "alarma", 2048, NULL, 2, &task_alarma);
    xTaskCreate (key, (const signed char*) "keyboard", 2048, NULL, 4, &task_key);
    xTaskCreate (codigo, (const signed char*) "codigo", 2048, NULL, 3, &task_codigo);
}
void vApplicationIdleHook (void) {}
void vMainQueueSendPassed( void ) {}

int main (void)
{

    fsm_bombilla = fsm_new_bombilla();
    fsm_alarma = fsm_new_alarma();
    fsm_codigo = fsm_new_codigo(5,5,5);

    user_init();
    vTaskStartScheduler();
    return 1;
}
