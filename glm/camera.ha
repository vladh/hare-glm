use math;

export fn lookat(eye: *v3, center: *v3, up: *v3) m4 = {
	const f = v3_sub(center, eye);
	v3_normalize(&f);
	const s = v3_crossn(&f, up);
	const u = v3_cross(&s, &f);

	const res = m4_new(1.0);
	res[0][0] = s[0];
	res[0][1] = u[0];
	res[0][2] = -f[0];
	res[1][0] = s[1];
	res[1][1] = u[1];
	res[1][2] = -f[1];
	res[2][0] = s[2];
	res[2][1] = u[2];
	res[2][2] = -f[2];
	res[3][0] = -v3_dot(&s, eye);
	res[3][1] = -v3_dot(&u, eye);
	res[3][2] = v3_dot(&f, eye);
	res[0][3] = 0.0;
	res[1][3] = 0.0;
	res[2][3] = 0.0;
	res[3][3] = 1.0;
	return res;
};


export fn perspective(
	m: *m4,
	fovy_in_deg: f32,
	aspect_ratio: f32,
	znear: f32,
	zfar: f32
) void = {
	m4_set_zero(m);

	const f = 1.0 / math::tanf64(fovy_in_deg * 0.5): f32;
	const f1 = 1.0 / (znear - zfar);

	m[0][0] = f / aspect_ratio;
	m[1][1] = f;
	m[2][2] = (znear + zfar) * f1;
	m[2][3] = -1.0;
	m[3][2] = 2.0 * znear * zfar * f1;
};
