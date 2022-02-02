export type iv2 = struct { x: int, y: int };
export type iv3 = struct { x: int, y: int, z: int };
export type iv4 = struct { x: int, y: int, z: int, w: int };

// TODO: Uncomment once this issue is resolved: https://todo.sr.ht/~sircmpwn/hare/513

// export type iv2 = union {
// 	struct {
// 		x: int,
// 		y: int,
// 	},
// 	struct {
// 		u: int,
// 		v: int,
// 	},
// };

// export type iv3 = union {
// 	struct {
// 		x: int,
// 		y: int,
// 		z: int,
// 	},
// 	struct {
// 		u: int,
// 		v: int,
// 		w: int,
// 	},
// 	struct {
// 		r: int,
// 		g: int,
// 		b: int,
// 	},
// 	struct {
// 		xy: iv2,
// 		unused_1: int,
// 	},
// 	struct {
// 		unused_2: int,
// 		yz: iv2,
// 	},
// 	struct {
// 		uv: iv2,
// 		ununsed_3: int,
// 	},
// 	struct {
// 		unused_4: int,
// 		vw: iv2,
// 	},
// };

// export type iv4 = union {
// 	struct {
// 		x: int,
// 		y: int,
// 		z: int,
// 		w: int,
// 	},
// 	struct {
// 		xyz: iv3,
// 		unused_1: int,
// 	},
// 	struct {
// 		r: int,
// 		g: int,
// 		b: int,
// 		a: int,
// 	},
// 	struct {
// 		rgb: iv3,
// 		unused_2: int,
// 	},
// 	struct {
// 		xy: iv2,
// 		zw: iv2,
// 	},
// 	struct {
// 		unused_3: int,
// 		yz: iv2,
// 		unused_4: int,
// 	},
// };
