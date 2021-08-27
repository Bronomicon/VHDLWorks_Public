ENTITY AW IS
	GENERIC	(N: Integer:=4); --Bitmenge des Addierwerkes
	PORT		(NumberA:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberB:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberC:	OUT BIT_VECTOR (N DOWNTO 0));
END AW;



ARCHITECTURE AW_4B_rtl OF AW IS

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

HA1: HA PORT MAP(NumberA(0), NumberB(0), NumberC(0), co(0));
FA1: FA PORT MAP(NumberA(1), NumberB(1), co(0), NumberC(1), co(1));
FA2: FA PORT MAP(NumberA(2), NumberB(2), co(1), NumberC(2), co(2));
FA3: FA PORT MAP(NumberA(3), NumberB(3), co(2), NumberC(3), NumberC(4));

END AW_4B_rtl;
