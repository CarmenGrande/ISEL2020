#include "alarma.h"
#include "bombilla.h"
#include "codigo.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <termios.h>
#include <sys/select.h>


/* RAW MODE 
static struct termios orig_termios;
void disable_raw_mode()
{
  if (tcsetattr(0, TCSAFLUSH, &orig_termios) == -1)
    perror ("tcsetattr");
}
void enable_raw_mode()
{
  if (tcgetattr(0, &orig_termios) == -1) perror("tcgetattr");
  atexit(disable_raw_mode);
  struct termios raw = orig_termios;
  raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
  raw.c_oflag &= ~(OPOST);
  raw.c_cflag |= (CS8);
  raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
  raw.c_cc[VMIN] = 0;
  raw.c_cc[VTIME] = 1;
  if (tcsetattr(0, TCSAFLUSH, &raw) == -1) perror("tcsetattr");
}
*/
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


bombilla_t* b1 = NULL;
alarma_t* a1 = NULL;
codigo_t* c1 = NULL;

/* Toma de Datos */
struct timespec max = {0, 0};


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
  case 'a': ((a1->flags_key) |= FLAG_EA); break;
  case 'z': ((a1->flags_key) |= FLAG_EA2); break;
  case 'b': ((b1->flags_key) |= FLAG_EB); break;
  case 'c': ((c1->flags_key) |= FLAG_EC); break;
  

	case 'q':
		
		
		exit(0); break;
  }
}



int main (void)
{

  a1 = fsm_new_alarma(1);
  b1 = fsm_new_bombilla(1);
  c1 = fsm_new_codigo(1,5,5,5);
   struct timespec next;
  clock_gettime(CLOCK_REALTIME, &next);
	struct timespec T = {0, 99999999};



	/* TOMA de datos */
	struct timespec t_inicial, t_final, temp;

	
	int frame = 0;

  while (1) {

		switch (frame) {
			case 0:
				if (key_pressed()) {
					key_process(getchar());
				}
				fsm_fire ((fsm_t*)a1);
				fsm_fire ((fsm_t*)b1);
                fsm_fire ((fsm_t*)c1);
                if(c1->code_on==1){
                    a1->code_on=1;
                    }
				break;
			case 1:
				if (key_pressed()) {
					key_process(getchar());
				}
				fsm_fire ((fsm_t*)a1);
				fsm_fire ((fsm_t*)b1);
                fsm_fire ((fsm_t*)c1);
                if(c1->code_on==1){
                a1->code_on=1;
                }
				break;
			case 2:
				if (key_pressed()) {
					key_process(getchar());
				}
				fsm_fire ((fsm_t*)a1);
				fsm_fire ((fsm_t*)b1);
                fsm_fire ((fsm_t*)c1);
                if(c1->code_on==1){
                    a1->code_on=1;
                    }
				break;
			case 3:
				if (key_pressed())
					key_process(getchar());
				fsm_fire ((fsm_t*)a1);
				fsm_fire ((fsm_t*)b1);
                fsm_fire ((fsm_t*)c1);
                if(c1->code_on==1){
                    a1->code_on=1;
                    }
				break;
			case 4:

				if (key_pressed())
					key_process(getchar());
				fsm_fire ((fsm_t*)a1);
				fsm_fire ((fsm_t*)b1);
                fsm_fire ((fsm_t*)c1);
				if(c1->code_on==1){
					a1->code_on=1;
					}
				/* Toma de datos */
				clock_gettime(CLOCK_REALTIME, &t_inicial);
				
				clock_gettime(CLOCK_REALTIME, &t_final);
				timespec_sub(&temp,&t_final,&t_inicial);
				if (timespec_less(&max,&temp)) {
					max = temp;
				}
				break;
		}

    timespec_add(&next,&next,&T);
    delay_until(&next);
		
		frame = (frame+1)%5;
	}
}
