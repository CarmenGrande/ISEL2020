 #include "codigo.h"


#include <time.h>
#include <stdio.h>
#include <pthread.h>
#include <stddef.h>

/* Comprobaciones */

static int start (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 c->key1=0;
c->key2=0;
c->key3=0;
 return (1);
}
 
static int pulsadorC (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 return (c->flags_key & FLAG_EC);
}

static int time_out (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 c->time+=1;
 if(c->time==99){
 printf(" llevamos %d ", c->time);
}
 return (c->time == 100);
}

static void key1 (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 ((c->flags_key) &= ~FLAG_EC);
 c->key1+=1;
 c->time=0;
 printf(" key1 %d ", c->key1);
}
static void key2 (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 ((c->flags_key) &= ~FLAG_EC);
 c->key2+=1;
 c->time=0;
 printf(" key2 %d ", c->key2);
}
static void key3 (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 ((c->flags_key) &= ~FLAG_EC);
 c->key3+=1;
 c->time=0;
  printf(" key3 %d ", c->key3);
}
static void key_ok (fsm_t* this){
 
codigo_t* c = (codigo_t*) this;
  printf(" key %d%d%d ", c->key1,c->key2, c->key3);
 if((c->key1==c->key1c) && (c->key2==c->key2c) && (c->key3==c->key3c)){
 printf(" key ok ");
 c->code_on=1;
}

 c->time=0;
 c->key1=0;
 c->key2=0;
 c->key3=0;
}

static void start1 (fsm_t* this) {
  codigo_t* c = (codigo_t*) this;
  c->code_on=0;

}


void codigo_init (codigo_t* this, int id, int ak,int bk, int ck) {
 static fsm_trans_t tt[] = {
  { s0, pulsadorC, s1, key1 },
  { s0, start, s0, start1 },
  { s1, pulsadorC, s1, key1 },
  { s1, time_out , s2, key2 },
  { s2, time_out , s3, key3 },
  { s3, time_out , s0, key_ok},
  { s2, pulsadorC, s2, key2},
  { s3,pulsadorC, s3,  key3},
  { -1, NULL, -1, NULL }
 };

 fsm_init ((fsm_t*) this,tt);
 this->id = id;
 this->key1=0;
 this->key2=0;
 this->key3=0;
 this->key1c=ak;
 this->key2c=bk;
 this->key3c=ck;
 this->flags_key=0;
 this->time=0;
 this->code_on=0;
 
}

codigo_t* fsm_new_codigo(int id,int ak, int bk ,int ck)
{
 codigo_t* this = (codigo_t*) malloc (sizeof (codigo_t));
 codigo_init (this, id,ak,bk,ck);
 return this;
}
