export fn ray_at(orig: *v3, dir: *v3, t: f32, point: *v3) void = {
	let dst = V3_ZERO;
	v3_scale_to(dir, t, &dst);
	*point = v3_add(orig, &dst);
};
