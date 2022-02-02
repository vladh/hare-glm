use fmt;

export fn v3_valptr(v: *v3) *const f32 = {
	return &((*v).x);
};

export fn v3_make(x: f32, y: f32, z: f32) v3 = {
	return v3 { x = x, y = y, z = z };
};

export fn v3_print(v: v3) void = {
	fmt::printfln("[ {}, {}, {} ]", v.x, v.y, v.z)!;
};
