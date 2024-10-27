export def V2_ZERO: v2 = [0.0, 0.0];
export def V2_ONE: v2 = [1.0, 1.0];

export fn v2_new(x: f32, y: f32) v2 = {
	return [x, y];
};

export fn v2_new_fill(x: f32) v2 = {
	return [x, x];
};
