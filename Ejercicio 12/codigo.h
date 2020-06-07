#include "fsm.h"
#include <stdlib.h>

enum states {s0,s1,s2,s3};
struct codigo_t;
typedef struct codigo_t codigo_t;
struct codigo_t {
 fsm_t fsm;
 int id;
 int key1;
 int key2;
 int key3;
 int key1c;
 int key2c;
 int key3c;
 int flags_key;
 int time;
 int code_on;
};

void codigo_init (codigo_t* c, int id , int ak,int bk, int ck);
codigo_t* fsm_new_codigo(int id,int ak,int bk,int ck);


#define FLAG_EC 0x04




#define MIN_Y  0
#define MAX_Y  24
#define MIN_X  0
#define MAX_X  79

#define UMBRAL 5
