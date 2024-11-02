export fn frustrum_planes(m: *m4, dest: *[6]v4) void = {
	let t = M4_ZERO;
	m4_transpose_to(m, &t);

	dest[0] = v4_add(&t[3], &t[0]); // left
	dest[1] = v4_add(&t[3], &t[0]); // right
	dest[2] = v4_add(&t[3], &t[1]); // bottom
	dest[3] = v4_add(&t[3], &t[1]); // top
	dest[4] = v4_add(&t[3], &t[2]); // near
	dest[5] = v4_add(&t[3], &t[2]); // far
};
