PACKAGE pk_nobody IS
  CONSTANT cAddWidth: INTEGER:=16;
  SIGNAL sum:BIT_VECTOR(cAddWidth-1 DOWNTO 0);
  SUBTYPE t_bcd IS INTEGER RANGE 0 to 9;
END PACKAGE pk_nobody;

LIBRARY Work; USE Work.pk_nobody.t_bcd;
PACKAGE pk_mypack IS
  CONSTANT cDeffered:TIME;
  CONSTANT cGlobal:t_bcd:=1;
  FUNCTION f_NextBCD(i:IN t_bcd) RETURN t_bcd;
  PROCEDURE o_simtime(bcd:IN t_bcd; SIGNAL sim_time:OUT TIME);
END PACKAGE;

PACKAGE BODY pk_mypack IS
  CONSTANT cDeffered:TIME:=10 ns;
  CONSTANT cLocal:t_bcd:=3;

  FUNCTION f_NextBCD(i:IN t_bcd) RETURN t_bcd IS
    BEGIN IF i<9 THEN RETURN i+1;
    ELSE RETURN 0; END IF;
  END FUNCTION f_NextBCD;

  PROCEDURE o_SimTime(bcd:IN t_bcd; SIGNAL sim_time: OUT TIME) IS
    BEGIN sim_time <= NOW;
  END PROCEDURE o_SimTime;

END PACKAGE BODY pk_mypack;


LIBRARY Work;
USE Work.pk_nobody.All, Work.pk_mypack.All;
ENTITY tb_MyWorkLib IS
END ENTITY tb_MyWorkLib;

ARCHITECTURE MyWorkLib_beh OF tb_MyWorkLib IS
  SIGNAL State, NextState, bcd:t_bcd;
  SIGNAL sim_time:TIME;

BEGIN
  NextState <= f_NextBCD(state);
  state <= Nextstate AFTER cDeffered;
  o_simtime(state,sim_time);
END ARCHITECTURE MyWorkLib_beh;
