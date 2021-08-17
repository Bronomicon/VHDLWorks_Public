ENTITY Addierwerk_scale IS
	GENERIC	(N: Integer:=6); --Bitmenge des Addierwerkes
	PORT		(NumberA:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberB:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberC:	OUT BIT_VECTOR (N DOWNTO 0));
END Addierwerk_scale;



ARCHITECTURE beh_Addierwerk_scale OF Addierwerk_scale IS

COMPONENT HalfAdder 
	PORT(
		a: IN	BIT;
		b: IN BIT;
		s: OUT BIT;
		c_out: OUT BIT);
END COMPONENT Halfadder;
		
COMPONENT FullAdder
	Port(
		a, b, c_in: IN BIT;
		s, c_out: OUT BIT);
END COMPONENT Fulladder;

SIGNAL co: BIT_VECTOR (0 TO N-1);

BEGIN
	
	Generate_Adder: FOR i IN 0 TO N-1 GENERATE
	
			Gen_0: IF i = 0 GENERATE
				
				HA_0: HalfAdder PORT MAP(NumberA(i), NumberB(i), NumberC(i), co(i));
				
			END GENERATE Gen_0;
			
			Gen_i: IF i > 0 AND i < N-1 GENERATE
			
				FA_i: FullAdder PORT MAP(NumberA(i), NumberB(i), co(i-1), NumberC(i), co(i));
				
			END GENERATE Gen_i;
			
			Gen_N: IF i = N-1 GENERATE
			
				FA_N: FullAdder PORT MAP(NumberA(i), NumberB(i), co(i-1), NumberC(i), NumberC(i+1));
				
			END GENERATE Gen_N;

	END GENERATE Generate_Adder;

END beh_Addierwerk_scale;			 