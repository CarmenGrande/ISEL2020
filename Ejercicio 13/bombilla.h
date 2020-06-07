#include "fsm.h"
#include <stdlib.h>

struct bombilla_t;
typedef struct bombilla_t bombilla_t;
struct bombilla_t {
     fsm_t fsm;
     int status;
     int time_on;
     int flags_key;
};

void bombilla_init (bombilla_t* this);
bombilla_t* fsm_new_bombilla ();


#define FLAG_EB 0x01


#define MIN_Y  0
#define MAX_Y  24
#define MIN_X  0
#define MAX_X  79

#define UMBRAL 5
