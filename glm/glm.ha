use math;

export fn make_perspective(
	matrix: *[16]f32,
	fovy_in_deg: f32,
	aspect_ratio: f32,
	znear: f32,
	zfar: f32
) void = {
	let ymax = znear * (math::tanf64(fovy_in_deg * math::PI / 360.0): f32);
	let xmax = ymax * aspect_ratio;
	make_frustum(matrix, -xmax, xmax, -ymax, ymax, znear, zfar);
};

export fn make_frustum(
	matrix: *[16]f32,
	left: f32,
	right: f32,
	bottom: f32,
	top: f32,
	znear: f32,
	zfar: f32
) void = {
	let t0 = 2.0 * znear;
	let t1 = right - left;
	let t2 = top - bottom;
	let t3 = zfar - znear;
	matrix[0] = t0 / t1;
	matrix[1] = 0.0;
	matrix[2] = 0.0;
	matrix[3] = 0.0;
	matrix[4] = 0.0;
	matrix[5] = t0 / t2;
	matrix[6] = 0.0;
	matrix[7] = 0.0;
	matrix[8] = (right + left) / t1;
	matrix[9] = (top + bottom) / t2;
	matrix[10] = (-zfar - znear) / t3;
	matrix[11] = -1.0;
	matrix[12] = 0.0;
	matrix[13] = 0.0;
	matrix[14] = (-t0 * zfar) / t3;
	matrix[15] = 0.0;
};
