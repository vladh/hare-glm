use fmt;
use math;

export fn v4_new(x: f32, y: f32, z: f32, w: f32) v4 = {
	return [x, y, z, w];
};

export fn v4_new_fill(x: f32) v4 = {
	return [x, x, x, x];
};

export fn v4_new_zero() v4 = {
	return [0.0, 0.0, 0.0, 0.0];
};

export fn v4_copy(v: *v4) v4 = {
	return [v[0], v[1], v[2], v[3]];
};

export fn v4_copy_to(v: *v4, dest: *v4) void = {
	dest[0] = v[0];
	dest[1] = v[1];
	dest[2] = v[2];
	dest[3] = v[3];
};

export fn v4_valptr(v: *v4) *const f32 = {
	return &v[0];
};

export fn v4_print(v: v4) void = {
	fmt::printfln("[ {}, {}, {}, {} ]", v[0], v[1], v[2], v[3])!;
};

export fn v4_negate(v: *v4) void = {
	v[0] *= -1.0;
	v[1] *= -1.0;
	v[2] *= -1.0;
	v[3] *= -1.0;
};

export fn v4_negate_to(v: *v4, dest: *v4) void = {
	dest[0] = v[0] * -1.0;
	dest[1] = v[1] * -1.0;
	dest[2] = v[2] * -1.0;
	dest[3] = v[3] * -1.0;
};

export fn v4_add(a: *v4, b: *v4) v4 = {
	return [
		a[0] + b[0],
		a[1] + b[1],
		a[2] + b[2],
		a[3] + b[3],
	];
};

export fn v4_sub(a: *v4, b: *v4) v4 = {
	return [
		a[0] - b[0],
		a[1] - b[1],
		a[2] - b[2],
		a[3] - b[3],
	];
};

export fn v4_normalize(v: *v4) void = {
	const norm = v4_norm(v);

	if (norm == 0.0) {
		v[0] = 0.0;
		v[1] = 0.0;
		v[2] = 0.0;
		v[3] = 0.0;
		return;
	};

	v4_scale(v, 1.0 / norm);
};

export fn v4_dot(a: *v4, b: *v4) f32 = {
	return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3];
};

export fn v4_norm2(v: *v4) f32 = {
	return v4_dot(v, v);
};

export fn v4_norm(v: *v4) f32 = {
	return math::sqrtf64(v4_norm2(v)): f32;
};

export fn v4_scale(v: *v4, s: f32) void = {
	v[0] = v[0] * s;
	v[1] = v[1] * s;
	v[2] = v[2] * s;
	v[3] = v[3] * s;
};

export fn v4_scale_to(v: *v4, s: f32, dest: *v4) void = {
	dest[0] = v[0] * s;
	dest[1] = v[1] * s;
	dest[2] = v[2] * s;
	dest[3] = v[3] * s;
};
