--------------------------------------------------------------------------------
--
--   Modul:     FILL ME
--   Designer:  Patrick Stiller
--   Purpose:   FILL ME
--   License:
--
--------------------------------------------------------------------------------

ENTITY CountBCD is

PORT(
reset, clock, enable : IN	BIT;
bcd						: OUT BIT_vector(3 downto 0);
cin						: IN Bit;
cout						: OUT Bit);

END ENTITY CountBCD;


ARCHITECTURE BCD_rtl_V1 OF CountBCD IS

COMPONENT AWS IS
	GENERIC (N: POSITIVE:=4);
	PORT (A_IN: IN BIT_VECTOR(N - 1 DOWNTO 0);
	      B_IN: IN BIT_VECTOR(N - 1 DOWNTO 0);
			V_OUT:OUT BIT_VECTOR(N - 1 DOWNTO 0);
			C_OUT:OUT BIT);
END COMPONENT AWS;

SIGNAL State, NextState:BIT_VECTOR(BCD'Range);

BEGIN

 --Nextstatelogic
 B_Nextstatelogic:BLOCK
  SIGNAL inc:BIT_VECTOR(BCD'RANGE);
  CONSTANT cOne:BIT_VECTOR(BCD'RANGE):=(0=>'1', OTHERS =>'0');

 BEGIN
  i_add:AWS PORT MAP (A_IN=>cOne, B_IN=>state, V_OUT=>inc, C_OUT=>OPEN);
  WITH state SELECT
   Nextstate <= "0000" WHEN "1001",
	             inc    WHEN OTHERS;
 END BLOCK B_Nextstatelogic;

 --State Memory
 P_Statememory:PROCESS(reset, clock)
 BEGIN
  IF reset = '0' THEN
   state <= (OTHERS => '0');
  ELSIF clock'EVENT AND clock='1' AND enable = '1' THEN
   state <= Nextstate;
  END IF;
 END PROCESS P_Statememory;

 --Output Logic
 B_Outputlogic:BLOCK
 BEGIN
  bcd <= state;
  cout <= '1' WHEN state="1001" AND cin='1' ELSE '0';
 END BLOCK B_Outputlogic;

 ASSERT state(3 DOWNTO 1)/="101" AND state(3 DOWNTO 2)/="11"
  REPORT "CountBCD: BCD-Value > 9" SEVERITY ERROR;

END ARCHITECTURE BCD_rtl_V1;

ARCHITECTURE BCD_rtl_v2 OF CountBCD IS
	SIGNAL state, NextState: BIT_VECTOR(BCD'Range);
BEGIN
	
	--Nextstatelogic
	p_Nextstatelogic:PROCESS (state)
	BEGIN
		CASE state IS
			WHEN "0000" => Nextstate <= "0001";
			WHEN "0001" => Nextstate <= "0010";
			WHEN "0010" => Nextstate <= "0011";
			WHEN "0011" => Nextstate <= "0100";
			WHEN "0100" => Nextstate <= "0101";
			WHEN "0101" => Nextstate <= "0110";
			WHEN "0110" => Nextstate <= "0111";
			WHEN "0111" => Nextstate <= "1000";
			WHEN "1000" => Nextstate <= "1001";
			WHEN OTHERS => Nextstate <= "0000";
		END CASE;
	END PROCESS p_Nextstatelogic;

	--Statememory
	P_Statememory:PROCESS (reset, clock)
	BEGIN
		IF reset='0' THEN
			state <= (OTHERS => '0');
		ELSIF clock'EVENT AND clock='1' AND enable='1' THEN
			state <= Nextstate;
		END IF;
	END PROCESS P_Statememory;

	--Outputlogic
	p_Outputlogic: PROCESS (cin, state)
	BEGIN
		bcd <= state;
		IF cin='1' AND state="1001" THEN
			cout <= '1';
		ELSE
			cout <= '0';
		END IF;
	END PROCESS p_Outputlogic;

END ARCHITECTURE BCD_rtl_v2;

CONFIGURATION DEF_BCD OF CountBCD IS
	FOR BCD_rtl_v2
	END FOR;
END CONFIGURATION DEF_BCD;
