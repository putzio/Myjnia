
PROGRAM _INIT
	programm:=0;
END_PROGRAM

PROGRAM _CYCLIC

	IF cabin_temp<4 THEN
		cabin_heater:=TRUE;
	ELSE 
		cabin_heater:=FALSE;
	END_IF;
	
	TON_1.IN := TON_wejscie;
	
	IF zl_1 THEN
		coin := 1;
		zl_1 := 0;
	END_IF;
	IF zl_2 THEN
		coin := 2;
		zl_2 := 0;
	END_IF;
	IF zl_5 THEN
		coin := 5;
		zl_5 := 0;
	END_IF;
	CASE coin OF
		1: TON_1.PT:=TON_1.PT + T#20s;			
		2: TON_1.PT:=TON_1.PT + T#40s;
		5: TON_1.PT:=TON_1.PT + T#100s;
	END_CASE;
	coin:=0;
	
	time:=TON_1.PT-TON_1.ET;
	
	IF time=0 THEN
		TON_1.IN :=FALSE;	
		TON_1.PT:=T#0s;
		foam_pump:=FALSE;
		water_pump:=FALSE;
		wax_pump:=FALSE;
		demi_water_pump:=FALSE;
	END_IF;
	
	IF btn_foam THEN
		programm := 1;
		btn_foam := FALSE;
	ELSIF btn_water THEN
		programm := 2;
		btn_water := FALSE;
	ELSIF btn_wax THEN
		programm := 3;
		btn_wax := FALSE;
	ELSIF btn_shine THEN
		programm := 4;
		btn_shine := FALSE;
	END_IF;
	
	IF time>0 THEN
		CASE programm OF
			1,3: IF water_temp<32 THEN
					water_heater:=TRUE;
				ELSE water_heater:=FALSE;	 
				END_IF; 
				TON_1.IN :=TRUE;
			2,4:  IF water_temp<20 THEN
					water_heater:=TRUE;
				ELSE water_heater:=FALSE;	 
				END_IF;
				TON_1.IN :=TRUE;
		END_CASE
		
		CASE programm OF
			0:
				foam_pump:=FALSE;
				water_pump:=FALSE;
				wax_pump:=FALSE;
				demi_water_pump:=FALSE;
			1: 	foam_pump:=TRUE;
				water_pump:=TRUE;
				wax_pump:=FALSE;
				demi_water_pump:=FALSE;
			2: 	water_pump:=TRUE;
				foam_pump:=FALSE;
				wax_pump:=FALSE;
				demi_water_pump:=FALSE;
			3: 	wax_pump:=TRUE;
				water_pump:=TRUE;
				foam_pump:=FALSE;
				demi_water_pump:=FALSE;
			4: 	shine_pump:= TRUE;
				demi_water_pump:=TRUE;
				foam_pump:=FALSE;
				wax_pump:=FALSE;
		END_CASE;
	END_IF;
	
	TON_1();	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

