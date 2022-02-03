use math;

export fn rad(deg: f32) f32 = {
	return deg * math::PI / 180.0;
};

export fn deg(rad: f32) f32 = {
	return rad * 180.0 / math::PI;
};
