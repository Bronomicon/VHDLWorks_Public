ENTITY TB_FA IS

END TB_FA;


ARCHITECTURE FA_BEH OF TB_FA IS
	
	COMPONENT FA PORT(
		a: IN		BIT;
		b: IN 	BIT;
		c_in: IN BIT;
		s: OUT 	BIT;
		c_out: OUT BIT);
	END COMPONENT;
	
	
   SIGNAL a_test: BIT;
	SIGNAL b_test: BIT;
	SIGNAL c_in_test: BIT;
	SIGNAL s_test: BIT;
	SIGNAL c_out_test: BIT;
	
	BEGIN
	FA_TEST: FA PORT MAP(a_test, b_test, c_in_test, s_test, c_out_test);
	a_test <= NOT a_test after 10ns;
	b_test <= NOT b_test after 20ns;
	c_in_test <= NOT c_in_test after 30ns;

END FA_BEH;
		
		