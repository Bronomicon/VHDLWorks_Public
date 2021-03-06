--------------------------------------------------------------------------------
--
--   Modul:     FILL ME
--   Designer:  Patrick Stiller
--   Purpose:   FILL ME
--   License:		
--
--------------------------------------------------------------------------------

ENTITY TB_BCD IS
END ENTITY TB_BCD;


ARCHITECTURE BCD_BEH OF TB_BCD IS

COMPONENT CountBCD IS
	PORT(
		reset, clock, enable : IN	BIT;
		bcd						: OUT BIT_vector(3 downto 0);
		cin						: IN Bit;
		cout						: OUT Bit);
END COMPONENT CountBCD;

SIGNAL Sreset, Sclock, Senable:BIT := '1';
SIGNAL SBCD: BIT_VECTOR (3 DOWNTO 0);
SIGNAL Scout, Scin: BIT:='1';

BEGIN

Sclock <= NOT Sclock AFTER 5ns;
Sreset <= '1', '0' AFTER 45ns, '1' AFTER 75ns;
Senable <= '1', '0' AFTER 45ns, '1' AFTER 75ns;
Scin <= '0' AFTER 52ns, '1' AFTER 54ns, '0' AFTER 132ns, '1' AFTER 134ns;

BCD_test: CountBCD PORT MAP(Sreset, Sclock, Senable, SBCD, Scin, Scout);

END ARCHITECTURE BCD_BEH;

 