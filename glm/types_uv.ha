export type uv2 = struct { x: uint, y: uint };
export type uv3 = struct { x: uint, y: uint, z: uint };
export type uv4 = struct { x: uint, y: uint, z: uint, w: uint };

// TODO: Uncomment once this issue is resolved: https://todo.sr.ht/~sircmpwn/hare/513

// export type uv2 = union {
// 	struct {
// 		x: uint,
// 		y: uint,
// 	},
// 	struct {
// 		u: uint,
// 		v: uint,
// 	},
// };

// export type uv3 = union {
// 	struct {
// 		x: uint,
// 		y: uint,
// 		z: uint,
// 	},
// 	struct {
// 		u: uint,
// 		v: uint,
// 		w: uint,
// 	},
// 	struct {
// 		r: uint,
// 		g: uint,
// 		b: uint,
// 	},
// 	struct {
// 		xy: uv2,
// 		unused_1: uint,
// 	},
// 	struct {
// 		unused_2: uint,
// 		yz: uv2,
// 	},
// 	struct {
// 		uv: uv2,
// 		ununsed_3: uint,
// 	},
// 	struct {
// 		unused_4: uint,
// 		vw: uv2,
// 	},
// };

// export type uv4 = union {
// 	struct {
// 		x: uint,
// 		y: uint,
// 		z: uint,
// 		w: uint,
// 	},
// 	struct {
// 		xyz: uv3,
// 		unused_1: uint,
// 	},
// 	struct {
// 		r: uint,
// 		g: uint,
// 		b: uint,
// 		a: uint,
// 	},
// 	struct {
// 		rgb: uv3,
// 		unused_2: uint,
// 	},
// 	struct {
// 		xy: uv2,
// 		zw: uv2,
// 	},
// 	struct {
// 		unused_3: uint,
// 		yz: uv2,
// 		unused_4: uint,
// 	},
// };
