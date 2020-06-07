#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM digito3 */
	case 3: // STATE 1 - _spin_nvr.tmp:77 - [(!((!(((code_state==DIG2)&&puls))||(code_state==DIG3))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!( !(( !(((now.code_state==2)&&now.puls))||(now.code_state==1)))))
			continue;
		/* merge: assert(!(!((!(((code_state==DIG2)&&puls))||(code_state==DIG3)))))(0, 2, 6) */
		reached[14][2] = 1;
		spin_assert( !( !(( !(((now.code_state==2)&&now.puls))||(now.code_state==1)))), " !( !(( !(((code_state==2)&&puls))||(code_state==1))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[14][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:82 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM digito2 */
	case 5: // STATE 1 - _spin_nvr.tmp:68 - [(!((!(((code_state==DIG1)&&puls))||(code_state==DIG2))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!( !(( !(((now.code_state==3)&&now.puls))||(now.code_state==2)))))
			continue;
		/* merge: assert(!(!((!(((code_state==DIG1)&&puls))||(code_state==DIG2)))))(0, 2, 6) */
		reached[13][2] = 1;
		spin_assert( !( !(( !(((now.code_state==3)&&now.puls))||(now.code_state==2)))), " !( !(( !(((code_state==3)&&puls))||(code_state==2))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[13][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:73 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM digito1 */
	case 7: // STATE 1 - _spin_nvr.tmp:59 - [(!((!(((code_state==IDLE)&&puls))||(code_state==DIG1))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!( !(( !(((now.code_state==4)&&now.puls))||(now.code_state==3)))))
			continue;
		/* merge: assert(!(!((!(((code_state==IDLE)&&puls))||(code_state==DIG1)))))(0, 2, 6) */
		reached[12][2] = 1;
		spin_assert( !( !(( !(((now.code_state==4)&&now.puls))||(now.code_state==3)))), " !( !(( !(((code_state==4)&&puls))||(code_state==3))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[12][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 10 - _spin_nvr.tmp:64 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM activar_alarma */
	case 9: // STATE 1 - _spin_nvr.tmp:50 - [(!((!(((alarm_state==INACTIVA)&&codigo_ok))||(334==ACTIVA))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!( !(( !(((now.alarm_state==5)&&now.codigo_ok))||(334==6)))))
			continue;
		/* merge: assert(!(!((!(((alarm_state==INACTIVA)&&codigo_ok))||(334==ACTIVA)))))(0, 2, 6) */
		reached[11][2] = 1;
		spin_assert( !( !(( !(((now.alarm_state==5)&&now.codigo_ok))||(334==6)))), " !( !(( !(((alarm_state==5)&&codigo_ok))||(334==6))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[11][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 10 - _spin_nvr.tmp:55 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM parar_alarma */
	case 11: // STATE 1 - _spin_nvr.tmp:41 - [(!((!(((alarm_state==ACTIVA)&&codigo_ok))||(334==INACTIVA))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!( !(( !(((now.alarm_state==6)&&now.codigo_ok))||(334==5)))))
			continue;
		/* merge: assert(!(!((!(((alarm_state==ACTIVA)&&codigo_ok))||(334==INACTIVA)))))(0, 2, 6) */
		reached[10][2] = 1;
		spin_assert( !( !(( !(((now.alarm_state==6)&&now.codigo_ok))||(334==5)))), " !( !(( !(((alarm_state==6)&&codigo_ok))||(334==5))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[10][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 10 - _spin_nvr.tmp:46 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM inactiva_no_suena */
	case 13: // STATE 1 - _spin_nvr.tmp:32 - [(!((!((alarm_state==INACTIVA))||!(alarma))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!( !(( !((now.alarm_state==5))|| !(now.alarma)))))
			continue;
		/* merge: assert(!(!((!((alarm_state==INACTIVA))||!(alarma)))))(0, 2, 6) */
		reached[9][2] = 1;
		spin_assert( !( !(( !((now.alarm_state==5))|| !(now.alarma)))), " !( !(( !((alarm_state==5))|| !(alarma))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[9][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 10 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM presencia_activa */
	case 15: // STATE 1 - _spin_nvr.tmp:21 - [((!(!((presencia&&(alarm_state==ACTIVA))))&&!(alarma)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(( !( !((now.presencia&&(now.alarm_state==6))))&& !(now.alarma))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:26 - [(!(alarma))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][8] = 1;
		if (!( !(now.alarma)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM luz_tiempo_apaga */
	case 18: // STATE 1 - _spin_nvr.tmp:12 - [(!((!((light_state==ENCENDIDA))||(334==APAGADA))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !(( !((now.light_state==8))||(334==7)))))
			continue;
		/* merge: assert(!(!((!((light_state==ENCENDIDA))||(334==APAGADA)))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !(( !((now.light_state==8))||(334==7)))), " !( !(( !((light_state==8))||(334==7))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM alguien_enciende */
	case 20: // STATE 1 - _spin_nvr.tmp:3 - [(!((!(((light_state==APAGADA)&&p_lamp))||(334==ENCENDIDA))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(( !(((now.light_state==7)&&now.p_lamp))||(334==8)))))
			continue;
		/* merge: assert(!(!((!(((light_state==APAGADA)&&p_lamp))||(334==ENCENDIDA)))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !(( !(((now.light_state==7)&&now.p_lamp))||(334==8)))), " !( !(( !(((light_state==7)&&p_lamp))||(334==8))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno_code */
	case 22: // STATE 1 - model.pml:167 - [t_now = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = now.t_now;
		now.t_now = 0;
#ifdef VAR_RANGES
		logval("t_now", now.t_now);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 2 - model.pml:170 - [puls = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		(trpt+1)->bup.oval = now.puls;
		now.puls = 1;
#ifdef VAR_RANGES
		logval("puls", now.puls);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 5 - model.pml:172 - [t_now = (t_now+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[5][5] = 1;
		(trpt+1)->bup.oval = now.t_now;
		now.t_now = (now.t_now+1);
#ifdef VAR_RANGES
		logval("t_now", now.t_now);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 6 - model.pml:173 - [printf('t_now=%d,code_state=%d,puls=%d,next=%d\\n',t_now,code_state,puls,next)] (0:0:0 - 1)
		IfNotBlocked
		reached[5][6] = 1;
		Printf("t_now=%d,code_state=%d,puls=%d,next=%d\n", now.t_now, now.code_state, now.puls, now.next);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 10 - model.pml:175 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC code */
	case 27: // STATE 1 - model.pml:120 - [code_state = IDLE] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = now.code_state;
		now.code_state = 4;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 2 - model.pml:122 - [((code_state==IDLE))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((now.code_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 3 - model.pml:124 - [(puls)] (42:0:3 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!(now.puls))
			continue;
		/* merge: next = (t_now+100)(42, 4, 42) */
		reached[4][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: cont1 = (cont1+1)(42, 5, 42) */
		reached[4][5] = 1;
		(trpt+1)->bup.ovals[1] = now.cont1;
		now.cont1 = (now.cont1+1);
#ifdef VAR_RANGES
		logval("cont1", now.cont1);
#endif
		;
		/* merge: code_state = DIG1(42, 6, 42) */
		reached[4][6] = 1;
		(trpt+1)->bup.ovals[2] = now.code_state;
		now.code_state = 3;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: .(goto)(42, 8, 42) */
		reached[4][8] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 10 - model.pml:130 - [((code_state==DIG1))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		if (!((now.code_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 11 - model.pml:132 - [(((next<t_now)&&puls))] (42:0:2 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		if (!(((now.next<now.t_now)&&now.puls)))
			continue;
		/* merge: cont1 = (cont1+1)(42, 12, 42) */
		reached[4][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.cont1;
		now.cont1 = (now.cont1+1);
#ifdef VAR_RANGES
		logval("cont1", now.cont1);
#endif
		;
		/* merge: next = (t_now+100)(42, 13, 42) */
		reached[4][13] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: .(goto)(42, 19, 42) */
		reached[4][19] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 32: // STATE 19 - model.pml:140 - [.(goto)] (0:42:0 - 2)
		IfNotBlocked
		reached[4][19] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 14 - model.pml:135 - [(((next>t_now)&&puls))] (42:0:3 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		if (!(((now.next>now.t_now)&&now.puls)))
			continue;
		/* merge: cont2 = (cont2+1)(42, 15, 42) */
		reached[4][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.cont2;
		now.cont2 = (now.cont2+1);
#ifdef VAR_RANGES
		logval("cont2", now.cont2);
#endif
		;
		/* merge: next = (t_now+100)(42, 16, 42) */
		reached[4][16] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: code_state = DIG2(42, 17, 42) */
		reached[4][17] = 1;
		(trpt+1)->bup.ovals[2] = now.code_state;
		now.code_state = 2;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: .(goto)(42, 19, 42) */
		reached[4][19] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 34: // STATE 21 - model.pml:141 - [((code_state==DIG2))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		if (!((now.code_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 22 - model.pml:143 - [(((next<t_now)&&puls))] (42:0:2 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!(((now.next<now.t_now)&&now.puls)))
			continue;
		/* merge: cont2 = (cont2+1)(42, 23, 42) */
		reached[4][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.cont2;
		now.cont2 = (now.cont2+1);
#ifdef VAR_RANGES
		logval("cont2", now.cont2);
#endif
		;
		/* merge: next = (t_now+100)(42, 24, 42) */
		reached[4][24] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: .(goto)(42, 30, 42) */
		reached[4][30] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 36: // STATE 30 - model.pml:151 - [.(goto)] (0:42:0 - 2)
		IfNotBlocked
		reached[4][30] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 25 - model.pml:146 - [(((next>t_now)&&puls))] (42:0:3 - 1)
		IfNotBlocked
		reached[4][25] = 1;
		if (!(((now.next>now.t_now)&&now.puls)))
			continue;
		/* merge: cont3 = (cont3+1)(42, 26, 42) */
		reached[4][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.cont3;
		now.cont3 = (now.cont3+1);
#ifdef VAR_RANGES
		logval("cont3", now.cont3);
#endif
		;
		/* merge: next = (t_now+100)(42, 27, 42) */
		reached[4][27] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: code_state = DIG3(42, 28, 42) */
		reached[4][28] = 1;
		(trpt+1)->bup.ovals[2] = now.code_state;
		now.code_state = 1;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: .(goto)(42, 30, 42) */
		reached[4][30] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 38: // STATE 32 - model.pml:152 - [((code_state==DIG3))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((now.code_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 33 - model.pml:154 - [(((next<t_now)&&puls))] (42:0:2 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		if (!(((now.next<now.t_now)&&now.puls)))
			continue;
		/* merge: cont3 = (cont3+1)(42, 34, 42) */
		reached[4][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.cont3;
		now.cont3 = (now.cont3+1);
#ifdef VAR_RANGES
		logval("cont3", now.cont3);
#endif
		;
		/* merge: next = (t_now+100)(42, 35, 42) */
		reached[4][35] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: .(goto)(42, 40, 42) */
		reached[4][40] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 40: // STATE 40 - model.pml:161 - [.(goto)] (0:42:0 - 2)
		IfNotBlocked
		reached[4][40] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 36 - model.pml:157 - [((next>t_now))] (42:0:2 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		if (!((now.next>now.t_now)))
			continue;
		/* merge: comprueba = 1(42, 37, 42) */
		reached[4][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = comprueba;
		comprueba = 1;
#ifdef VAR_RANGES
		logval("comprueba", comprueba);
#endif
		;
		/* merge: code_state = IDLE(42, 38, 42) */
		reached[4][38] = 1;
		(trpt+1)->bup.ovals[1] = now.code_state;
		now.code_state = 4;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: .(goto)(42, 40, 42) */
		reached[4][40] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[4][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 42: // STATE 45 - model.pml:163 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][45] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno_alarm */
	case 43: // STATE 1 - model.pml:112 - [codigo_ok = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = now.codigo_ok;
		now.codigo_ok = 1;
#ifdef VAR_RANGES
		logval("codigo_ok", now.codigo_ok);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 2 - model.pml:113 - [presencia = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = now.presencia;
		now.presencia = 1;
#ifdef VAR_RANGES
		logval("presencia", now.presencia);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 5 - model.pml:115 - [printf('codigo_ok=%d,alarm_state=%d,presencia=%d,alarma=%d\\n',codigo_ok,alarm_state,presencia,alarma)] (0:0:0 - 3)
		IfNotBlocked
		reached[3][5] = 1;
		Printf("codigo_ok=%d,alarm_state=%d,presencia=%d,alarma=%d\n", now.codigo_ok, now.alarm_state, now.presencia, now.alarma);
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 9 - model.pml:117 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC alarm */
	case 47: // STATE 1 - model.pml:81 - [alarm_state = INACTIVA] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.alarm_state;
		now.alarm_state = 5;
#ifdef VAR_RANGES
		logval("alarm_state", now.alarm_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 2 - model.pml:83 - [((alarm_state==INACTIVA))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.alarm_state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 3 - model.pml:85 - [(codigo_ok)] (24:0:3 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(now.codigo_ok))
			continue;
		/* merge: codigo_ok = 0(24, 4, 24) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.codigo_ok;
		now.codigo_ok = 0;
#ifdef VAR_RANGES
		logval("codigo_ok", now.codigo_ok);
#endif
		;
		/* merge: buzzer = 0(24, 5, 24) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[1] = buzzer;
		buzzer = 0;
#ifdef VAR_RANGES
		logval("buzzer", buzzer);
#endif
		;
		/* merge: alarm_state = ACTIVA(24, 6, 24) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[2] = now.alarm_state;
		now.alarm_state = 6;
#ifdef VAR_RANGES
		logval("alarm_state", now.alarm_state);
#endif
		;
		/* merge: .(goto)(24, 8, 24) */
		reached[2][8] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[2][25] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 50: // STATE 10 - model.pml:91 - [((alarm_state==ACTIVA))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((now.alarm_state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 11 - model.pml:93 - [(codigo_ok)] (24:0:4 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!(now.codigo_ok))
			continue;
		/* merge: alarma = 0(24, 12, 24) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.alarma;
		now.alarma = 0;
#ifdef VAR_RANGES
		logval("alarma", now.alarma);
#endif
		;
		/* merge: codigo_ok = 0(24, 13, 24) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[1] = now.codigo_ok;
		now.codigo_ok = 0;
#ifdef VAR_RANGES
		logval("codigo_ok", now.codigo_ok);
#endif
		;
		/* merge: presencia = 0(24, 14, 24) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[2] = now.presencia;
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", now.presencia);
#endif
		;
		/* merge: buzzer = 0(24, 15, 24) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals[3] = buzzer;
		buzzer = 0;
#ifdef VAR_RANGES
		logval("buzzer", buzzer);
#endif
		;
		/* merge: .(goto)(24, 22, 24) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[2][25] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 52: // STATE 22 - model.pml:104 - [.(goto)] (0:24:0 - 2)
		IfNotBlocked
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[2][25] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 53: // STATE 16 - model.pml:98 - [(presencia)] (24:0:4 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!(now.presencia))
			continue;
		/* merge: alarma = 1(24, 17, 24) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.alarma;
		now.alarma = 1;
#ifdef VAR_RANGES
		logval("alarma", now.alarma);
#endif
		;
		/* merge: buzzer = 1(24, 18, 24) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[1] = buzzer;
		buzzer = 1;
#ifdef VAR_RANGES
		logval("buzzer", buzzer);
#endif
		;
		/* merge: presencia = 0(24, 19, 24) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[2] = now.presencia;
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", now.presencia);
#endif
		;
		/* merge: codigo_ok = 0(24, 20, 24) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[3] = now.codigo_ok;
		now.codigo_ok = 0;
#ifdef VAR_RANGES
		logval("codigo_ok", now.codigo_ok);
#endif
		;
		/* merge: .(goto)(24, 22, 24) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[2][25] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 54: // STATE 27 - model.pml:106 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno_light */
	case 55: // STATE 1 - model.pml:69 - [t_now = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.t_now;
		now.t_now = 0;
#ifdef VAR_RANGES
		logval("t_now", now.t_now);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 2 - model.pml:72 - [p_lamp = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.p_lamp;
		now.p_lamp = 1;
#ifdef VAR_RANGES
		logval("p_lamp", now.p_lamp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 6 - model.pml:75 - [t_now = (t_now+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.t_now;
		now.t_now = (now.t_now+1);
#ifdef VAR_RANGES
		logval("t_now", now.t_now);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 7 - model.pml:76 - [printf('t_now=%d,state=%d,p_lamp=%d,next=%d\\n',t_now,light_state,p_lamp,next)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		Printf("t_now=%d,state=%d,p_lamp=%d,next=%d\n", now.t_now, now.light_state, now.p_lamp, now.next);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 11 - model.pml:78 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ligth */
	case 60: // STATE 1 - model.pml:43 - [light_state = APAGADA] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.light_state;
		now.light_state = 7;
#ifdef VAR_RANGES
		logval("light_state", now.light_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 2 - model.pml:45 - [((light_state==APAGADA))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.light_state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 3 - model.pml:47 - [(p_lamp)] (21:0:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(now.p_lamp))
			continue;
		/* merge: p_lamp = 0(21, 4, 21) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.p_lamp;
		now.p_lamp = 0;
#ifdef VAR_RANGES
		logval("p_lamp", now.p_lamp);
#endif
		;
		/* merge: next = (t_now+100)(21, 5, 21) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: light_state = ENCENDIDA(21, 6, 21) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = now.light_state;
		now.light_state = 8;
#ifdef VAR_RANGES
		logval("light_state", now.light_state);
#endif
		;
		/* merge: .(goto)(21, 8, 21) */
		reached[0][8] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 63: // STATE 10 - model.pml:53 - [((light_state==ENCENDIDA))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.light_state==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 11 - model.pml:55 - [(p_lamp)] (21:0:2 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!(now.p_lamp))
			continue;
		/* merge: p_lamp = 0(21, 12, 21) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.p_lamp;
		now.p_lamp = 0;
#ifdef VAR_RANGES
		logval("p_lamp", now.p_lamp);
#endif
		;
		/* merge: next = (t_now+100)(21, 13, 21) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = now.next;
		now.next = (now.t_now+100);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 65: // STATE 19 - model.pml:63 - [.(goto)] (0:21:0 - 3)
		IfNotBlocked
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 66: // STATE 14 - model.pml:58 - [(((t_now>next)&&!(p_lamp)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((now.t_now>now.next)&& !(now.p_lamp))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 15 - model.pml:59 - [(1)] (21:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 68: // STATE 16 - model.pml:60 - [((t_now>next))] (21:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((now.t_now>now.next)))
			continue;
		/* merge: light_state = APAGADA(21, 17, 21) */
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.light_state;
		now.light_state = 7;
#ifdef VAR_RANGES
		logval("light_state", now.light_state);
#endif
		;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 69: // STATE 24 - model.pml:65 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

