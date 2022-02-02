use math;

export fn perspective(
	m: *m4,
	fovy_in_deg: f32,
	aspect_ratio: f32,
	znear: f32,
	zfar: f32
) void = {
	m4_zero(m);

	const f = 1.0 / math::tanf64(fovy_in_deg * 0.5): f32;
	const f1 = 1.0 / (znear - zfar);

	m[0][0] = f / aspect_ratio;
	m[1][1] = f;
	m[2][2] = (znear + zfar) * f1;
	m[2][3] = -1.0;
	m[3][2] = 2.0 * znear * zfar * f1;

	// const ymax = znear * (math::tanf64(fovy_in_deg * math::PI / 360.0): f32);
	// const xmax = ymax * aspect_ratio;
	// frustum(m, -xmax, xmax, -ymax, ymax, znear, zfar);
};

// export fn frustum(
// 	m: *[16]f32,
// 	left: f32,
// 	right: f32,
// 	bottom: f32,
// 	top: f32,
// 	znear: f32,
// 	zfar: f32
// ) void = {
// 	let t0 = 2.0 * znear;
// 	let t1 = right - left;
// 	let t2 = top - bottom;
// 	let t3 = zfar - znear;
// 	m[0] = t0 / t1;
// 	m[5] = t0 / t2;
// 	m[8] = (right + left) / t1;
// 	m[9] = (top + bottom) / t2;
// 	m[10] = (-zfar - znear) / t3;
// 	m[11] = -1.0;
// 	m[14] = (-t0 * zfar) / t3;
// };
