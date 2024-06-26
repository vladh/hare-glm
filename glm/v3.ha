use fmt;
use math;

export fn v3_new(x: f32, y: f32, z: f32) v3 = {
	return [x, y, z];
};

export fn v3_new_fill(x: f32) v3 = {
	return [x, x, x];
};

export fn v3_new_zero() v3 = {
	return [0.0, 0.0, 0.0];
};

export fn v3_copy(v: *v3) v3 = {
	return [v[0], v[1], v[2]];
};

export fn v3_copy_to(v: *v3, dest: *v3) void = {
	dest[0] = v[0];
	dest[1] = v[1];
	dest[2] = v[2];
};

export fn v3_valptr(v: *v3) *const f32 = {
	return &v[0];
};

export fn v3_print(v: *v3) void = {
	fmt::printfln("[ {}, {}, {} ]", v[0], v[1], v[2])!;
};

export fn v3_negate(v: *v3) void = {
	v[0] *= -1.0;
	v[1] *= -1.0;
	v[2] *= -1.0;
};

export fn v3_negate_to(v: *v3, dest: *v3) void = {
	dest[0] = v[0] * -1.0;
	dest[1] = v[1] * -1.0;
	dest[2] = v[2] * -1.0;
};

export fn v3_add(a: *v3, b: *v3) v3 = {
	return [
		a[0] + b[0],
		a[1] + b[1],
		a[2] + b[2],
	];
};

export fn v3_sub(a: *v3, b: *v3) v3 = {
	return [
		a[0] - b[0],
		a[1] - b[1],
		a[2] - b[2],
	];
};

export fn v3_normalize(v: *v3) void = {
	const norm = v3_norm(v);

	if (norm == 0.0) {
		v[0] = 0.0;
		v[1] = 0.0;
		v[2] = 0.0;
		return;
	};

	v3_scale(v, 1.0 / norm);
};

export fn v3_normalize_to(v: *v3, dest: *v3) void = {
	const norm = v3_norm(v);

	if (norm == 0.0) {
		dest[0] = 0.0;
		dest[1] = 0.0;
		dest[2] = 0.0;
		return;
	};

	v3_scale_to(v, 1.0 / norm, dest);
};

export fn v3_dot(a: *v3, b: *v3) f32 = {
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
};

export fn v3_norm2(v: *v3) f32 = {
	return v3_dot(v, v);
};

export fn v3_norm(v: *v3) f32 = {
	return math::sqrtf64(v3_norm2(v)): f32;
};

export fn v3_scale(v: *v3, s: f32) void = {
	v[0] = v[0] * s;
	v[1] = v[1] * s;
	v[2] = v[2] * s;
};

export fn v3_scale_to(v: *v3, s: f32, dest: *v3) void = {
	dest[0] = v[0] * s;
	dest[1] = v[1] * s;
	dest[2] = v[2] * s;
};

export fn v3_cross(a: *v3, b: *v3) v3 = {
	return [
		a[1] * b[2] - a[2] * b[1],
		a[2] * b[0] - a[0] * b[2],
		a[0] * b[1] - a[1] * b[0],
	];
};

export fn v3_crossn(a: *v3, b: *v3) v3 = {
	let res = v3_cross(a, b);
	v3_normalize(&res);
	return res;
};
