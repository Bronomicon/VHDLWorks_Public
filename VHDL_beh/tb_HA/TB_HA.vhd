ENTITY TB_HA IS

END TB_HA;


ARCHITECTURE HA_beh OF TB_HA IS
	
	COMPONENT HA PORT(
		a: IN	BIT;
		b: IN BIT;
		s: OUT BIT;
		c_out: OUT BIT);
	END COMPONENT;
	
	
   SIGNAL a_test: BIT;
	SIGNAL b_test: BIT;
	SIGNAL s_test: BIT;
	SIGNAL c_out_test: BIT;
	
	BEGIN
	HA_TEST: HA PORT MAP(a_test, b_test, s_test, c_out_test);
	a_test <= NOT a_test after 10ns;
	b_test <= NOT b_test after 20ns;

END HA_beh;
		
		