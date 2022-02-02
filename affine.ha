export fn translate(m: *m4, v: v3) void = {
	v4_muladds(*glm::m4_col(m, 0), v.x, glm::m4_col(m, 3));
	v4_muladds(*glm::m4_col(m, 1), v.y, glm::m4_col(m, 3));
	v4_muladds(*glm::m4_col(m, 2), v.z, glm::m4_col(m, 3));
};
