use math;

export fn rad(deg: f32) f32 = {
	return deg * math::PI: f32 / 180.0;
};

export fn deg(rad: f32) f32 = {
	return rad * 180.0 / math::PI: f32;
};
