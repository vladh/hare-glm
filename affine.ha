export fn translate(m: *m4, v: v3) void = {
	v4_muladds_to(glm::m4_col(m, 0), v[0], glm::m4_col(m, 3));
	v4_muladds_to(glm::m4_col(m, 1), v[1], glm::m4_col(m, 3));
	v4_muladds_to(glm::m4_col(m, 2), v[2], glm::m4_col(m, 3));
};
