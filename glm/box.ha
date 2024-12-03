export fn aabb_frustrum(box: *[2]v3, planes: *[6]v4) bool = {
	for (let p &.. planes) {
		let dp = p[0] * box[if (p[0] > 0.0) 1 else 0][0]
			+ p[1] * box[if (p[1] > 0.0) 1 else 0][1]
			+ p[2] * box[if (p[2] > 0.0) 1 else 0][2];
		if (dp < -p[3]) {
			return false;
		};
	};
	return true;
};

export fn aabb_point(box: *[2]v3, point: *v3) bool = {
	return	(point[0] >= box[0][0] && point[0] <= box[1][0]) &&
		(point[1] >= box[0][1] && point[1] <= box[1][1]) &&
		(point[2] >= box[0][2] && point[2] <= box[1][2]);
};
