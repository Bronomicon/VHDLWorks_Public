ENTITY TB_Addierwerk_scale IS
	GENERIC (N: Integer :=6);

END TB_Addierwerk_scale;


ARCHITECTURE BEH_Addierwerk_scale OF TB_Addierwerk_scale IS
	
	COMPONENT Addierwerk_scale IS
	GENERIC	(N: Integer:=6); --Bitmenge des Addierwerkes
	PORT		(NumberA:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberB:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberC:	OUT BIT_VECTOR (N DOWNTO 0));
	END COMPONENT;
	
	
   SIGNAL NumberA_test: BIT_VECTOR (N-1 DOWNTO 0);
	SIGNAL NumberB_test: BIT_VECTOR (N-1 DOWNTO 0);
	SIGNAL NumberC_test: BIT_VECTOR (N DOWNTO 0);

	
	BEGIN
	Addierwerk_TEST: Addierwerk_scale PORT MAP(NumberA_test, NumberB_test, NumberC_test);
	
	NumberA_test <= "000000", "000101" AFTER 10ns, "101101" AFTER 20ns, "111111" AFTER 30ns;
	NumberB_test <= "000000", "000101" AFTER 10ns, "101101" AFTER 20ns, "111111" AFTER 30ns;

END BEH_Addierwerk_scale;
		
		