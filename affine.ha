use math;

export fn translate(m: *m4, v: v3) void = {
	v4_muladds_to(glm::m4_col(m, 0), v[0], glm::m4_col(m, 3));
	v4_muladds_to(glm::m4_col(m, 1), v[1], glm::m4_col(m, 3));
	v4_muladds_to(glm::m4_col(m, 2), v[2], glm::m4_col(m, 3));
};

export fn rotation_make(angle: f32, axis: *v3) m4 = {
	const r = m4_ident();
	const c = math::cosf64(angle);

	let axisn = v3_zero();
	let v = v3_zero();
	let vs = v3_zero();

	v3_normalize_to(axis, &axisn);
	v3_scale_to(&axisn, 1.0 - c, &v);
	v3_scale_to(&axisn, math::sinf64(angle), &vs);

	v3_scale_to(&axisn, v[0], m4_col(&r, 0));
	v3_scale_to(&axisn, v[1], m4_col(&r, 1));
	v3_scale_to(&axisn, v[2], m4_col(&r, 2));

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
	m4_mul_to(m, &rot, m);
};
