ENTITY FullAdder IS
Port(
a, b, c_in: IN BIT;
s, c_out: OUT BIT);
END FullAdder;

ARCHITECTURE RTL_FullAdder OF FullAdder IS

SIGNAL d, e, f, g, h, i, j, k, l, m, n, o, p, q, r: BIT;

BEGIN

	d <= a OR b;
	e <= d AND c_in;
	r <= NOT C_in;
	f <= a AND b AND r;
	c_out <= e OR f;
	
	g <= NOT a;
	h <= NOT b;
	i <= NOT c_in;
	j <= c_in AND h;
	k <= b AND i;
	l <= j OR k;
	m <= g AND l;
	n <= h AND i;
	o <= c_in AND b;
	p <= n OR o;
	q <= a AND p;
	s <= m OR q;
	
END RTL_FullAdder;
	