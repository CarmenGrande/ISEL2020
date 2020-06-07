#include "bombilla.h"

#include <time.h>
#include <stdio.h>
#include <pthread.h>
#include <stddef.h>

/* Comprobaciones */
 
static int pulsador (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 return (b->flags_key & FLAG_EB);
}
static int time_outb (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 if(b->status ==1){

 b->time_on++;
}
 
 
 return (b->time_on == 100);//???? flags
}
static void encenderb (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 ((b->flags_key) &= ~FLAG_EB);
 b->status=1;
 b->time_on=0;
 printf(" %d bombilla encedida", b->status);
}
static void apagarb (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 ((b->flags_key) &= ~FLAG_EB);
 b->time_on=0;
 b->status=0;
 printf(" %d bombilla apagada", b->status);
}

void bombilla_init (bombilla_t* this, int id) {
 static fsm_trans_t tt[] = {
  { 0, pulsador, 0, encenderb },
  { 0, time_outb, 0, apagarb },
  { -1, NULL, -1, NULL }
 };

 fsm_init ((fsm_t*) this, tt);
 this->id = id;
 this->status = 0;
 this->time_on = 0;
 this->flags_key = 0;
}

bombilla_t* fsm_new_bombilla (int id)
{
 bombilla_t* this = (bombilla_t*) malloc (sizeof (bombilla_t));
 bombilla_init (this, id);
 return this;
}
