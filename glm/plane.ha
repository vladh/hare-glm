use math;

export fn plane_norm(plane: *v4) void = {
	const norm = v3_norm(plane: *v3);
	if (norm < math::F32_EPS) {
		*plane = [0.0...];
		return;
	};
	v4_scale(plane, 1.0 / norm);
};
