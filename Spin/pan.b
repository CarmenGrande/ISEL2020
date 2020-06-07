	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM digito3 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM digito2 */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM digito1 */
;
		
	case 7: // STATE 1
		goto R999;

	case 8: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM activar_alarma */
;
		
	case 9: // STATE 1
		goto R999;

	case 10: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM parar_alarma */
;
		
	case 11: // STATE 1
		goto R999;

	case 12: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM inactiva_no_suena */
;
		
	case 13: // STATE 1
		goto R999;

	case 14: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM presencia_activa */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM luz_tiempo_apaga */
;
		
	case 18: // STATE 1
		goto R999;

	case 19: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM alguien_enciende */
;
		
	case 20: // STATE 1
		goto R999;

	case 21: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno_code */

	case 22: // STATE 1
		;
		now.t_now = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 2
		;
		now.puls = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 5
		;
		now.t_now = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC code */

	case 27: // STATE 1
		;
		now.code_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 6
		;
		now.code_state = trpt->bup.ovals[2];
		now.cont1 = trpt->bup.ovals[1];
		now.next = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 31: // STATE 13
		;
		now.next = trpt->bup.ovals[1];
		now.cont1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 32: // STATE 19
		goto R999;

	case 33: // STATE 17
		;
		now.code_state = trpt->bup.ovals[2];
		now.next = trpt->bup.ovals[1];
		now.cont2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 35: // STATE 24
		;
		now.next = trpt->bup.ovals[1];
		now.cont2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 36: // STATE 30
		goto R999;

	case 37: // STATE 28
		;
		now.code_state = trpt->bup.ovals[2];
		now.next = trpt->bup.ovals[1];
		now.cont3 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 39: // STATE 35
		;
		now.next = trpt->bup.ovals[1];
		now.cont3 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 40: // STATE 40
		goto R999;

	case 41: // STATE 38
		;
		now.code_state = trpt->bup.ovals[1];
		comprueba = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 45
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno_alarm */

	case 43: // STATE 1
		;
		now.codigo_ok = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 2
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC alarm */

	case 47: // STATE 1
		;
		now.alarm_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 49: // STATE 6
		;
		now.alarm_state = trpt->bup.ovals[2];
		buzzer = trpt->bup.ovals[1];
		now.codigo_ok = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 51: // STATE 15
		;
		buzzer = trpt->bup.ovals[3];
		now.presencia = trpt->bup.ovals[2];
		now.codigo_ok = trpt->bup.ovals[1];
		now.alarma = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 52: // STATE 22
		goto R999;

	case 53: // STATE 20
		;
		now.codigo_ok = trpt->bup.ovals[3];
		now.presencia = trpt->bup.ovals[2];
		buzzer = trpt->bup.ovals[1];
		now.alarma = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 54: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno_light */

	case 55: // STATE 1
		;
		now.t_now = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 2
		;
		now.p_lamp = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 6
		;
		now.t_now = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 59: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ligth */

	case 60: // STATE 1
		;
		now.light_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 62: // STATE 6
		;
		now.light_state = trpt->bup.ovals[2];
		now.next = trpt->bup.ovals[1];
		now.p_lamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 64: // STATE 13
		;
		now.next = trpt->bup.ovals[1];
		now.p_lamp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 65: // STATE 19
		goto R999;
;
		;
		;
		
	case 67: // STATE 15
		goto R999;

	case 68: // STATE 17
		;
		now.light_state = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;
	}

