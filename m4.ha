use fmt;
use rt;

export fn m4_valptr(m: *m4) *const f32 = {
	return &((*m)[0][0]);
};

export fn m4_make(diag: f32) m4 = {
	return [
		[diag, 0.0, 0.0, 0.0],
		[0.0, diag, 0.0, 0.0],
		[0.0, 0.0, diag, 0.0],
		[0.0, 0.0, 0.0, diag],
	];
};

export fn m4_ident(m: *m4) void = {
	m4_zero(m);
	(*m)[0][0] = 1.0;
	(*m)[1][1] = 1.0;
	(*m)[2][2] = 1.0;
	(*m)[3][3] = 1.0;
};

export fn m4_zero(m: *m4) void = {
	rt::memset(m, 0, 4 * 4 * 4);
};

export fn m4_col(m: *m4, col: int) *v4 = {
	return (&(*m)[col]: *[4]f32): *v4;
};

export fn m4_print(m: *m4) void = {
	fmt::printfln("[ {}, {}, {}, {}, ", m[0][0], m[1][0], m[2][0], m[3][0])!;
	fmt::printfln("  {}, {}, {}, {}, ", m[0][1], m[1][1], m[2][1], m[3][1])!;
	fmt::printfln("  {}, {}, {}, {}, ", m[0][2], m[1][2], m[2][2], m[3][2])!;
	fmt::printfln("  {}, {}, {}, {} ]", m[0][3], m[1][3], m[2][3], m[3][3])!;
};
