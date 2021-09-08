ENTITY TB_SUBS IS
END ENTITY TB_SUBS;


ARCHITECTURE BEH_SUBS OF TB_SUBS IS

FUNCTION f_diff(SIGNAL a,b: IN INTEGER) RETURN INTEGER IS
BEGIN
  return a-b;
END FUNCTION f_diff;

FUNCTION f_diff(SIGNAL a,b: IN REAL) RETURN REAL IS
BEGIN
  return a-b;
END FUNCTION f_diff;

PROCEDURE o_sumdif(SIGNAL a,b: IN INTEGER; SIGNAL d,s:OUT INTEGER) IS
BEGIN
  d <= a-b;
  s <= a+b;
  RETURN;
END PROCEDURE o_sumdif;

PROCEDURE o_sumdif(SIGNAL a,b:IN REAL; SIGNAL d,s:OUT REAL) IS
BEGIN
  d <= a-b;
  s <= a+b;
RETURN;
END PROCEDURE o_sumdif;

SIGNAL ia, ib, idiff, idifo, isum: INTEGER:=0;
SIGNAL ra, rb, rdiff, rdifo, rsum: REAL:=0.0;

BEGIN

ia <= ia + 1 AFTER 10 ns;
ib <= ib + 2 AFTER 20 ns;

ra <= REAL(ia);
rb <= REAL(ib);

idiff <= f_diff(ia, ib);
rdiff <= f_diff(ra, rb);

oi_sumdif: o_sumdif(ia, ib, idifo, isum);
or_sumdif: o_sumdif(ra, rb, rdifo, rsum);

END ARCHITECTURE BEH_SUBS;
