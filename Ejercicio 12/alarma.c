#include "alarma.h"


#include <time.h>
#include <stdio.h>
#include <pthread.h>
#include <stddef.h>

/* Comprobaciones */
 
static int pulsadorA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 return (a->flags_key & FLAG_EA);
}

static int presencia (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 return (a->flags_key & FLAG_EA2);
}
static int code1 (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 

 return (a->code_on==1); //???? flags
}
static void encenderA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 ((a->flags_key) &= ~FLAG_EA);
 
a->status=1;
printf(" %d alarma encendida", a->status);
}
static void apagarA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 
 
 
 a->code_on=0;
 a->status=0;
 a->pito=0;
 printf(" %d alarma apagada", a->status);
}
static void pitarA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 ((a->flags_key) &= ~FLAG_EA2);

 a->pito=1;
  printf(" %d presencia encendida", a->pito);
}

void alarma_init (alarma_t* this, int id) {
 static fsm_trans_t tt[] = {
  { stage0, pulsadorA, stage1, encenderA },
  { stage1, presencia, stage1, pitarA },
  { stage1, code1 , stage0, apagarA },
  { -1, NULL, -1, NULL }
 };

 fsm_init ((fsm_t*) this, tt);
 this->id = id;
 this->status = 0;
 this->code_on = 0;
 this->pito=0;
 this->flags_key = 0;
}

alarma_t* fsm_new_alarma(int id)
{
 alarma_t* this = (alarma_t*) malloc (sizeof (alarma_t));
 alarma_init (this, id);
 return this;
}
