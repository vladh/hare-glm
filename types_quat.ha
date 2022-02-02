export type quat = struct { x: f32, y: f32, z: f32, w: f32 };

// TODO: Uncomment once this issue is resolved: https://todo.sr.ht/~sircmpwn/hare/513

// export type quat = union {
// 	struct {
// 		x: f32,
// 		y: f32,
// 		z: f32,
// 		w: f32,
// 	},
// 	struct {
// 		xyz: v3,
// 		unused_1: f32,
// 	},
// };
