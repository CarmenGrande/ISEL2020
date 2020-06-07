
//Especificacíon en LTL
//Especificaciones para la lampara
ltl alguien_enciende {
[]((light_state==APAGADA && p_lamp)-> <>light_state==ENCENDIDA)
}
ltl luz_tiempo_apaga {
[]((light_state==ENCENDIDA)-> <>light_state==APAGADA)
}
//Especificacions para la alarma
ltl presencia_activa{
[]((presencia && alarm_state==ACTIVA)-> <> alarma)
}
ltl inactiva_no_suena{
[]((alarm_state==INACTIVA)-> !alarma)
}
ltl parar_alarma{
[]((alarm_state==ACTIVA && codigo_ok)-> <> alarm_state==INACTIVA)
}
ltl activar_alarma{
[]((alarm_state==INACTIVA && codigo_ok)-> <> alarm_state==ACTIVA)
}
//Especificaciones de codigo
ltl hay_pulso{
[](puls)-> <> (cont1=cont1+1 ||cont2=cont2+1 ||cont2=cont2+1)
}
ltl digito1{
[]((code_state==IDLE && puls)-> code_state==DIG1)
}
ltl digito2{
[]((code_state==DIG1 && puls)-> code_state==DIG2)
}
ltl digito3{
[]((code_state==DIG2 && puls)-> code_state==DIG3)
}
//Variables tiempo y globales
#define T 100
int next;
int t_now;

mtype={ENCENDIDA,APAGADA,ACTIVA,INACTIVA,IDLE, DIG1, DIG2,DIG3}
//variables lampara
int p_lamp;

mtype light_state

//Variables alarma
mtype  alarm_state;
int presencia;
int alarma;
int buzzer;
int codigo_ok;

//Variables de codigo
mtype code_state;
int cont1;
int cont2;
int cont3;
int comprueba;
int puls;

active proctype ligth(){
light_state=APAGADA
	do
	::(light_state==APAGADA)->atomic{
		if
		::(p_lamp)->
			p_lamp=0; 
			next=t_now + T; 
			light_state=ENCENDIDA;
		fi;
	}
	::(light_state==ENCENDIDA)->atomic{
		if
		::p_lamp->
			p_lamp=0;
			next=t_now + T;
		::(t_now>next && !p_lamp)->
			skip;
		::(t_now>next)-> 
			light_state=APAGADA;
		fi;
	}
	od
}


active proctype entorno_light(){
	t_now=0;
	do
	::if
	  ::p_lamp=1
	  ::skip
	  fi;
	  t_now=t_now+1;
	  printf("t_now=%d,state=%d,p_lamp=%d,next=%d\n",t_now,light_state,p_lamp,next)
	od
}

active proctype alarm(){
alarm_state=INACTIVA
	do
	::(alarm_state==INACTIVA)->atomic{
		if
		::codigo_ok->
			codigo_ok=0; 
			buzzer=0; 
			alarm_state=ACTIVA;
		fi;
	}
	::(alarm_state==ACTIVA)->atomic{
		if
		::codigo_ok->
			alarma=0;
			codigo_ok=0;
			presencia=0;
			buzzer=0;
		::presencia->
			alarma=1
			buzzer=1;
			presencia=0;
			codigo_ok=0;
		fi;
	}
	od
}


active proctype entorno_alarm(){
	do
	::if
	  ::codigo_ok=1
	  ::presencia=1
	  fi;
	  printf("codigo_ok=%d,alarm_state=%d,presencia=%d,alarma=%d\n",codigo_ok,alarm_state,presencia,alarma)
	od
}

active proctype code(){
code_state=IDLE
	do
	::(code_state==IDLE)->atomic{
	if
	::puls->
		next=t_now + T;  
		cont1=cont1+1; 
		code_state=DIG1;
	fi;
	}
	::(code_state==DIG1)->atomic{
	if
	::(next<t_now && puls)->
		cont1=cont1+1;
		next=t_now + T;
	::(next>t_now && puls)->
		cont2=cont2 + 1;
		next=t_now + T;
		code_state=DIG2;
	fi;
	}
	::(code_state==DIG2)->atomic{
	if
	::(next<t_now && puls)->
		cont2= cont2 + 1;
		next= t_now + T;
	::(next>t_now && puls)->
		cont3=cont3 + 1;
		next=t_now + T;
		code_state=DIG3;
	fi;
	}
	::(code_state==DIG3)->atomic{
	if
	::((next<t_now) && puls)->
		cont3=cont3+1;
		next=t_now + T;
	::(next>t_now )->
		comprueba=1;
		code_state=IDLE;
	fi;
	}
od
}


active proctype entorno_code(){
	t_now=0;
	do
	::if
	  ::puls=1
	fi;
	  t_now=t_now+1;
	  printf("t_now=%d,code_state=%d,puls=%d,next=%d\n",t_now,code_state,puls,next)
	od
}
