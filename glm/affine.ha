use math;

export fn translation_make(v: *v3) m4 = {
	const mat = m4_new_ident();
	v3_copy_to(v, m4_col(&mat, 3): *v3);
	return mat;
};

export fn translate(m: *m4, v: *v3) void = {
	const mat = translation_make(v);
	m4_mul_to(&mat, m, m);
};

export fn rotation_make(angle: f32, axis: *v3) m4 = {
	const r = m4_new_ident();
	const c = math::cosf64(angle);

	let axisn = v3_new_zero();
	let v = v3_new_zero();
	let vs = v3_new_zero();

	v3_normalize_to(axis, &axisn);
	v3_scale_to(&axisn, 1.0 - c, &v);
	v3_scale_to(&axisn, math::sinf64(angle), &vs);

	v3_scale_to(&axisn, v[0], m4_col(&r, 0): *v3);
	v3_scale_to(&axisn, v[1], m4_col(&r, 1): *v3);
	v3_scale_to(&axisn, v[2], m4_col(&r, 2): *v3);

	r[0][0] += c;
	r[1][0] -= vs[2];
	r[2][0] += vs[1];

	r[0][1] += vs[2];
	r[1][1] += c;
	r[2][1] -= vs[0];

	r[0][2] -= vs[1];
	r[1][2] += vs[0];
	r[2][2] += c;

	return r;
};

export fn rotate(m: *m4, angle: f32, axis: *v3) void = {
	const rot = rotation_make(angle, axis);
	m4_mul_to(&rot, m, m);
};

export fn rotate_at(m: *m4, pivot: *v3, angle: f32, axis: *v3) void = {
	const pivot_inv = v3_new_fill(0.0);
	v3_negate_to(pivot, &pivot_inv);
	translate(m, pivot);
	rotate(m, angle, axis);
	translate(m, &pivot_inv);
};

export fn scale_make(v: *v3) m4 = {
	let res = m4_new_ident();
	res[0][0] = v[0];
	res[1][1] = v[1];
	res[2][2] = v[2];
	return res;
};

export fn scale(m: *m4, v: *v3) void = {
	const mat = scale_make(v);
	m4_mul_to(&mat, m, m);
};
