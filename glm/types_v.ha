export type v2 = union {
	struct {
		x: f32,
		y: f32,
	},
	struct {
		u: f32,
		v: f32,
	},
};

export type v3 = union {
	struct {
		x: f32,
		y: f32,
		z: f32,
	},
	struct {
		u: f32,
		v: f32,
		w: f32,
	},
	struct {
		r: f32,
		g: f32,
		b: f32,
	},
	struct {
		xy: v2,
		unused_1: f32,
	},
	struct {
		unused_2: f32,
		yz: v2,
	},
	struct {
		uv: v2,
		ununsed_3: f32,
	},
	struct {
		unused_4: f32,
		vw: v2,
	},
};

export type v4 = union {
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
	struct {
		r: f32,
		g: f32,
		b: f32,
		a: f32,
	},
	struct {
		rgb: v3,
		unused_2: f32,
	},
	struct {
		xy: v2,
		zw: v2,
	},
	struct {
		unused_3: f32,
		yz: v2,
		unused_4: f32,
	},
};
