use fmt;

export fn v4_valptr(v: *v4) *const f32 = {
	return &((*v).x);
};

export fn v4_make(x: f32, y: f32, z: f32, w: f32) v4 = {
	return v4 { x = x, y = y, z = z, w = w };
};

export fn v4_print(v: v4) void = {
	fmt::printfln("[ {}, {}, {}, {} ]", v.x, v.y, v.z, v.w)!;
};

export fn v4_muladds(v: v4, s: f32, dst: *v4) void = {
	dst.x += v.x * s;
	dst.y += v.y * s;
	dst.z += v.z * s;
	dst.w += v.w * s;
};
