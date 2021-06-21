
PROGRAM _INIT
	programm:=0;
END_PROGRAM

PROGRAM _CYCLIC
//time left
	time:=(TIME_TO_DINT(TON_1.PT-TON_1.ET)/1000);
	//Turning off the machine when the time is over		
	IF time=0 THEN
		TON_1.IN :=FALSE;	
		TON_1.PT:=T#0s;
		programm := 0;
		TON_1.IN := 0;
	END_IF;
	//Temperature control:
	IF cabin_temp<4 THEN
		cabin_heater:=TRUE;
	ELSIF cabin_temp>12 THEN
		cabin_heater:=FALSE;
	END_IF;
	
	CASE programm OF
		0:
			IF water_temp<4 THEN
				water_heater := TRUE;
			ELSIF water_temp>12 THEN
				water_heater := FALSE;
			END_IF;
		1,3: 
			IF water_temp<32 THEN
				water_heater:=TRUE;
			ELSE water_heater:=FALSE;	 
			END_IF; 
			TON_1.IN := TRUE;
		2,4:  
			IF water_temp<20 THEN
				water_heater:=TRUE;
			ELSE water_heater:=FALSE;	 
			END_IF;
			TON_1.IN := TRUE;
	END_CASE
	//Coins 
	CASE coin OF
		1: TON_1.PT:=TON_1.PT + T#20s;			
		2: TON_1.PT:=TON_1.PT + T#40s;
		5: TON_1.PT:=TON_1.PT + T#100s;
	END_CASE;
	coin:=0;

	//Valve control
	CASE programm OF
		0:
			foam_valve:=FALSE;
			water_pump:=FALSE;
			wax_valve:=FALSE;
			shine_valve:= FALSE;
		1: 	foam_valve:=TRUE;
			water_pump:=TRUE;
			wax_valve:=FALSE;
			shine_valve:= FALSE;
		2: 	water_pump:=TRUE;
			foam_valve:=FALSE;
			wax_valve:=FALSE;
			shine_valve:= FALSE;
		3: 	wax_valve:=TRUE;
			water_pump:=TRUE;
			foam_valve:=FALSE;
			shine_valve:= FALSE;
		4: 	shine_valve:= TRUE;
			water_pump:=TRUE;
			foam_valve:=FALSE;
			wax_valve:=FALSE;
		5:	TON_1.PT := TON_1.PT-TON_1.ET;
			TON_1.IN :=FALSE;
			programm := 0;
	END_CASE;
	//Calling timer function 
	TON_1();	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM
