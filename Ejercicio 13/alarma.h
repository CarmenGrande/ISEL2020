
#include "fsm.h"
#include <stdlib.h>

enum statesA {stage0,stage1};
struct alarma_t;
typedef struct alarma_t alarma_t;
struct alarma_t {
 fsm_t fsm;
  int status;
 int code_on;
 int pito;
 int flags_key;
};

void alarma_init (alarma_t* this);
alarma_t* fsm_new_alarma ();


#define FLAG_EA 0x02
#define FLAG_EA2 0x08



#define MIN_Y  0
#define MAX_Y  24
#define MIN_X  0
#define MAX_X  79

#define UMBRAL 5
