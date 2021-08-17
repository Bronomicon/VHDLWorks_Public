ENTITY TB_Addierwerk IS

END TB_Addierwerk;


ARCHITECTURE BEH_Addierwerk OF TB_Addierwerk IS
	
	COMPONENT Addierwerk IS
	GENERIC	(N: Integer:=4); --Bitmenge des Addierwerkes
	PORT		(NumberA:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberB:	IN BIT_VECTOR (N-1 DOWNTO 0);
				 NumberC:	OUT BIT_VECTOR (N DOWNTO 0));
	END COMPONENT;
	
	
   SIGNAL NumberA_test: BIT_VECTOR (3 DOWNTO 0);
	SIGNAL NumberB_test: BIT_VECTOR (3 DOWNTO 0);
	SIGNAL NumberC_test: BIT_VECTOR (4 DOWNTO 0);

	
	BEGIN
	Addierwerk_TEST: Addierwerk PORT MAP(NumberA_test, NumberB_test, NumberC_test);
	
	NumberA_test <= "0000", "0001" AFTER 10ns, "1011" AFTER 20ns, "1111" AFTER 30ns;
	NumberB_test <= "0000", "0001" AFTER 10ns, "1011" AFTER 20ns, "1111" AFTER 30ns;

END BEH_Addierwerk;
		
		