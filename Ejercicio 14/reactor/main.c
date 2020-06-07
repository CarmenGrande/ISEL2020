#include "reactor.h"
#include "fsm.h"
#include <sys/select.h>
#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include "alarma.h"
#include "bombilla.h"
#include "codigo.h"

void 
delay_until (struct timeval* next_activation)
{
  struct timeval now, timeout;
  gettimeofday (&now, NULL);
  timeval_sub (&timeout, next_activation, &now);
  select (0, NULL, NULL, NULL, &timeout);
}

static int* alarma_temp;
static int* bombilla_temp;
static int* codigo_temp;

static struct timeval next_alarma;
static struct timeval next_bombilla;
static struct timeval next_codigo;

static int pulsadorA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_alarma, &now);
 return (a->flags_key & FLAG_EA);
}

static int presencia (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_alarma, &now);
 return (a->flags_key & FLAG_EA2);
}
static int code1 (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_alarma, &now);

 return (a->code_on); //???? flags
}
static int pulsador (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_bombilla, &now);
 return (b->flags_key & FLAG_EB);
}
static int time_outb (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_bombilla, &now);
 if(b->status ==1){

 b->time_on++;
}
 
 
 return (b->time_on == 100);//???? flags
}
static int start (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_codigo, &now);
 c->key1=0;
c->key2=0;
c->key3=0;
 return (1);
}
 
static int pulsadorC (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_codigo, &now);
 return (c->flags_key & FLAG_EC);
}

static int time_out (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 c->time+=1;
 struct timeval now;
 gettimeofday (&now, NULL);
 timeval_less (&next_codigo, &now);
 if(c->time==99){
 printf(" llevamos %d ", c->time);
}
 return (c->time == 100);
}

static void encenderA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
static struct timeval period = { 0, 100000 };

timeval_add (&next_alarma, &next_alarma, &period);
 ((a->flags_key) &= ~FLAG_EA);
 
a->status=1;
printf(" %d alarma encendida", a->status);
}
static void apagarA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 static struct timeval period ={ 0, 100000 };

timeval_add (&next_alarma, &next_alarma, &period);
 
 
 a->code_on=0;
 a->status=0;
 a->pito=0;
 printf(" %d alarma apagada", a->status);
}
static void pitarA (fsm_t* this) {
 alarma_t* a = (alarma_t*) this;
 ((a->flags_key) &= ~FLAG_EA2);
static struct timeval period = { 0, 100000 };

timeval_add (&next_alarma, &next_alarma, &period);
 a->pito=1;
  printf(" %d presencia encendida", a->pito);
}
static void encenderb (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 ((b->flags_key) &= ~FLAG_EB);
 static struct timeval period = { 0, 100000 };

timeval_add (&next_bombilla, &next_bombilla, &period);
 b->status=1;
 b->time_on=0;
 printf(" %d bombilla encedida", b->status);
}
static void apagarb (fsm_t* this) {
 bombilla_t* b = (bombilla_t*) this;
 ((b->flags_key) &= ~FLAG_EB);
 static struct timeval period = { 0, 100000 };

timeval_add (&next_bombilla, &next_bombilla, &period);
 b->time_on=0;
 b->status=0;
 printf(" %d bombilla apagada", b->status);
}
static void key1 (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 
 ((c->flags_key) &= ~FLAG_EC);
 static struct timeval period = { 0, 100000 };

timeval_add (&next_codigo, &next_codigo, &period);
 c->key1+=1;
 c->time=0;
 printf(" key1 %d ", c->key1);
}
static void key2 (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 ((c->flags_key) &= ~FLAG_EC);
 static struct timeval period = { 0, 100000 };

timeval_add (&next_codigo, &next_codigo, &period);
 c->key2+=1;
 c->time=0;
 printf(" key2 %d ", c->key2);
}
static void key3 (fsm_t* this) {
 codigo_t* c = (codigo_t*) this;
 ((c->flags_key) &= ~FLAG_EC);
 static struct timeval period = { 0, 100000 };

timeval_add (&next_codigo, &next_codigo, &period);
 c->key3+=1;
 c->time=0;
  printf(" key3 %d ", c->key3);
}
static void key_ok (fsm_t* this){
 
codigo_t* c = (codigo_t*) this;
  printf(" key %d%d%d ", c->key1,c->key2, c->key3);
 static struct timeval period = { 0, 100000 };

timeval_add (&next_codigo, &next_codigo, &period);
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
  static struct timeval period = { 0, 100000 };

timeval_add (&next_codigo, &next_codigo, &period);
  c->code_on=0;

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

alarma_t* fsm_new_alarma(int id)
{
 alarma_t* this = (alarma_t*) malloc (sizeof (alarma_t));
 alarma_init (this, id);
gettimeofday(&next_alarma, NULL);
 return this;
}

bombilla_t* fsm_new_bombilla (int id)
{
 bombilla_t* this = (bombilla_t*) malloc (sizeof (bombilla_t));
 bombilla_init (this, id);
 gettimeofday(&next_bombilla, NULL);
 return this;
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
gettimeofday(&next_codigo, NULL);
 return this;
}
 

bombilla_t* fsm_bombilla;
codigo_t* fsm_codigo;
alarma_t* fsm_alarma;


static
void
alarma_func (struct event_handler_t* this)
{if (key_pressed()) {
					key_process(getchar());
				}
  static const struct timeval period = { 0, 100000 };
  fsm_fire (fsm_alarma);
  if(fsm_codigo-> code_on==1){fsm_alarma->code_on=1;}
  timeval_add (&this->next_activation, &this->next_activation, &period);
}
static
void
bombilla_func (struct event_handler_t* this)
{
if (key_pressed()) {
					key_process(getchar());
				}
  static const struct timeval period = { 0, 100000 };
  fsm_fire (fsm_bombilla); 
  timeval_add (&this->next_activation, &this->next_activation, &period);
}
static
void
codigo_func (struct event_handler_t* this)
{
if (key_pressed()) {
					key_process(getchar());
				}
  static const struct timeval period = { 0, 100000 };
  fsm_fire (fsm_codigo); 
  timeval_add (&this->next_activation, &this->next_activation, &period);
}
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
int
main ()
{
  EventHandler eh_alarma, eh_bombilla,eh_codigo;
  reactor_init ();

  fsm_alarma = fsm_new_alarma(1);
  fsm_bombilla = fsm_new_bombilla(1);
  fsm_codigo = fsm_new_codigo(1,5,5,5);

  event_handler_init (&eh_alarma, 2, alarma_func);
  reactor_add_handler (&eh_alarma);
  
  event_handler_init (&eh_bombilla, 3, bombilla_func);
  reactor_add_handler (&eh_bombilla);  

  event_handler_init (&eh_codigo, 1, codigo_func);
  reactor_add_handler (&eh_codigo);

  while (1) {
    reactor_handle_events ();
  }
}
