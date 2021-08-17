ENTITY Halfadder is

PORT(
a: IN	BIT;
b: IN BIT;
s: OUT BIT;
c_out: OUT BIT);

END HALFADDER;


Architecture Halfadder_rtl OF HalfAdder IS

SIGNAL
c,d,e,f: BIT;

BEGIN
	c <= NOT b;
	d <= NOT a;
	e <= c AND a;
	f <= d AND b;
	s <= e OR f;
	c_out <= a AND b;
END Halfadder_rtl;

   
