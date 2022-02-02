export type quat = union {
	struct {
		x: f32,
		y: f32,
		z: f32,
		w: f32,
	},
	struct {
		xyz: v3,
		unused_1: f32,
	},
};
