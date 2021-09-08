ENTITY AWS IS
	GENERIC	(N: Integer:=6); --Bitmenge des Addierwerkes
	PORT		(A_In:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 B_In:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 V_Out:	OUT BIT_VECTOR (N-1 DOWNTO 0);
				 C_Out:  OUT BIT);
				 
END AWS;

ARCHITECTURE AWS_rtl OF AWS IS

COMPONENT HA
	PORT(
		a: IN	BIT;
		b: IN BIT;
		s: OUT BIT;
		c_out: OUT BIT);
END COMPONENT HA;

COMPONENT FA
	Port(
		a, b, c_in: IN BIT;
		s, c_out: OUT BIT);
END COMPONENT FA;

SIGNAL co: BIT_VECTOR (0 TO N-1);

BEGIN

	Generate_Adder: FOR i IN 0 TO N-1 GENERATE

			Gen_0: IF i = 0 GENERATE

				HA_0: HA PORT MAP(A_IN(i), B_IN(i), V_OUT(i), co(i));

			END GENERATE Gen_0;

			Gen_i: IF i > 0 AND i < N-1 GENERATE

				FA_i: FA PORT MAP(A_IN(i), B_IN(i), co(i-1), V_OUT(i), co(i));

			END GENERATE Gen_i;

			Gen_N: IF i = N-1 GENERATE

				FA_N: FA PORT MAP(A_IN(i), B_IN(i), co(i-1), V_OUT(i), C_OUT);

			END GENERATE Gen_N;

	END GENERATE Generate_Adder;

END AWS_rtl;
