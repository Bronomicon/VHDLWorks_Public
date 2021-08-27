--------------------------------------------------------------------------------
--
--   Modul:     FILL ME
--   Designer:  Patrick Stiller
--   Purpose:   FILL ME
--   License:		
--
--------------------------------------------------------------------------------

ENTITY empty is

PORT(
INbit: IN	BIT;
OUTbit: OUT BIT);

END empty;


Architecture empty_rtl OF empty IS

SIGNAL
A: BIT;
B: BIT;


BEGIN
	A <= NOT INbit;
	B <= A AND NOT INbit;
	OUTbit <= B;
END empty_rtl;
