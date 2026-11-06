import .types;

// SHAPES
extern fn set_shapes_texture(texture: Texture2D, rec: Rectangle) = "SetShapesTexture";
extern fn get_shapes_texture() -> Texture2D = "GetShapesTexture";
extern fn get_shapes_texture_rectangle() -> Rectangle = "GetShapesTextureRectangle";

// PIXELS AND LINES
extern fn draw_pixel(pos_x: i32, pos_y: i32, color: Color) = "DrawPixel";
extern fn draw_pixel_v(position: Vector2, color: Color) = "DrawPixelV";
extern fn draw_line(start_x: i32, start_y: i32, end_x: i32, end_y: i32, color: Color) = "DrawLine";
extern fn draw_line_v(start_pos: Vector2, end_pos: Vector2, color: Color) = "DrawLineV";
extern fn draw_line_ex(start_pos: Vector2, end_pos: Vector2, thick: f32, color: Color) = "DrawLineEx";
extern fn draw_line_strip(points: const Vector2&, point_count: i32, color: Color) = "DrawLineStrip";
extern fn draw_line_bezier(start_pos: Vector2, end_pos: Vector2, thick: f32, color: Color) = "DrawLineBezier";
extern fn draw_line_dashed(start_pos: Vector2, end_pos: Vector2, dash_size: i32, space_size: i32, color: Color) = "DrawLineDashed";

// TRIANGLES
extern fn draw_triangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) = "DrawTriangle";
extern fn draw_triangle_gradient(v1: Vector2, v2: Vector2, v3: Vector2, c1: Color, c2: Color, c3: Color) = "DrawTriangleGradient";
extern fn draw_triangle_lines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) = "DrawTriangleLines";
extern fn draw_triangle_lines_ex(v1: Vector2, v2: Vector2, v3: Vector2, thick: f32, color: Color) = "DrawTriangleLinesEx";
extern fn draw_triangle_fan(points: const Vector2&, point_count: i32, color: Color) = "DrawTriangleFan";
extern fn draw_triangle_strip(points: const Vector2&, point_count: i32, color: Color) = "DrawTriangleStrip";

// RECTANGLES
extern fn draw_rectangle(pos_x: i32, pos_y: i32, width: i32, height: i32, color: Color) = "DrawRectangle";
extern fn draw_rectangle_v(position: Vector2, size: Vector2, color: Color) = "DrawRectangleV";
extern fn draw_rectangle_rec(rec: Rectangle, color: Color) = "DrawRectangleRec";
extern fn draw_rectangle_pro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) = "DrawRectanglePro";
extern fn draw_rectangle_gradient_v(pos_x: i32, pos_y: i32, width: i32, height: i32, top: Color, bottom: Color) = "DrawRectangleGradientV";
extern fn draw_rectangle_gradient_h(pos_x: i32, pos_y: i32, width: i32, height: i32, left: Color, right: Color) = "DrawRectangleGradientH";
extern fn draw_rectangle_gradient_ex(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) = "DrawRectangleGradientEx";
extern fn draw_rectangle_lines(pos_x: i32, pos_y: i32, width: i32, height: i32, color: Color) = "DrawRectangleLines";
extern fn draw_rectangle_lines_ex(rec: Rectangle, thick: f32, color: Color) = "DrawRectangleLinesEx";
extern fn draw_rectangle_rounded(rec: Rectangle, roundness: f32, segments: i32, color: Color) = "DrawRectangleRounded";
extern fn draw_rectangle_rounded_lines(rec: Rectangle, roundness: f32, segments: i32, color: Color) = "DrawRectangleRoundedLines";
extern fn draw_rectangle_rounded_lines_ex(rec: Rectangle, roundness: f32, segments: i32, thick: f32, color: Color) = "DrawRectangleRoundedLinesEx";

// POLYGONS
extern fn draw_poly(center: Vector2, sides: i32, radius: f32, rotation: f32, color: Color) = "DrawPoly";
extern fn draw_poly_lines(center: Vector2, sides: i32, radius: f32, rotation: f32, color: Color) = "DrawPolyLines";
extern fn draw_poly_lines_ex(center: Vector2, sides: i32, radius: f32, rotation: f32, thick: f32, color: Color) = "DrawPolyLinesEx";

// CIRCLES / ELLIPSES / RINGS
extern fn draw_circle(center_x: i32, center_y: i32, radius: f32, color: Color) = "DrawCircle";
extern fn draw_circle_v(center: Vector2, radius: f32, color: Color) = "DrawCircleV";
extern fn draw_circle_gradient(center: Vector2, radius: f32, inner: Color, outer: Color) = "DrawCircleGradient";
extern fn draw_circle_sector(center: Vector2, radius: f32, start_angle: f32, end_angle: f32, segments: i32, color: Color) = "DrawCircleSector";
extern fn draw_circle_sector_lines(center: Vector2, radius: f32, start_angle: f32, end_angle: f32, segments: i32, color: Color) = "DrawCircleSectorLines";
extern fn draw_circle_sector_lines_ex(center: Vector2, radius: f32, start_angle: f32, end_angle: f32, segments: i32, thick: f32, color: Color) = "DrawCircleSectorLinesEx";
extern fn draw_circle_lines(center_x: i32, center_y: i32, radius: f32, color: Color) = "DrawCircleLines";
extern fn draw_circle_lines_v(center: Vector2, radius: f32, color: Color) = "DrawCircleLinesV";
extern fn draw_circle_lines_ex(center: Vector2, radius: f32, thick: f32, color: Color) = "DrawCircleLinesEx";
extern fn draw_ellipse(center_x: i32, center_y: i32, radius_h: f32, radius_v: f32, color: Color) = "DrawEllipse";
extern fn draw_ellipse_v(center: Vector2, radius_h: f32, radius_v: f32, color: Color) = "DrawEllipseV";
extern fn draw_ellipse_lines(center_x: i32, center_y: i32, radius_h: f32, radius_v: f32, color: Color) = "DrawEllipseLines";
extern fn draw_ellipse_lines_v(center: Vector2, radius_h: f32, radius_v: f32, color: Color) = "DrawEllipseLinesV";
extern fn draw_ellipse_lines_ex(center: Vector2, radius_h: f32, radius_v: f32, thick: f32, color: Color) = "DrawEllipseLinesEx";
extern fn draw_ring(center: Vector2, inner_radius: f32, outer_radius: f32, start_angle: f32, end_angle: f32, segments: i32, color: Color) = "DrawRing";
extern fn draw_ring_lines(center: Vector2, inner_radius: f32, outer_radius: f32, start_angle: f32, end_angle: f32, segments: i32, color: Color) = "DrawRingLines";
extern fn draw_ring_lines_ex(center: Vector2, inner_radius: f32, outer_radius: f32, start_angle: f32, end_angle: f32, segments: i32, thick: f32, color: Color) = "DrawRingLinesEx";

// SPLINES
extern fn draw_spline_linear(points: const Vector2&, point_count: i32, thick: f32, color: Color) = "DrawSplineLinear";
extern fn draw_spline_basis(points: const Vector2&, point_count: i32, thick: f32, color: Color) = "DrawSplineBasis";
extern fn draw_spline_catmull_rom(points: const Vector2&, point_count: i32, thick: f32, color: Color) = "DrawSplineCatmullRom";
extern fn draw_spline_bezier_quadratic(points: const Vector2&, point_count: i32, thick: f32, color: Color) = "DrawSplineBezierQuadratic";
extern fn draw_spline_bezier_cubic(points: const Vector2&, point_count: i32, thick: f32, color: Color) = "DrawSplineBezierCubic";
extern fn draw_spline_segment_linear(p1: Vector2, p2: Vector2, thick: f32, color: Color) = "DrawSplineSegmentLinear";
extern fn draw_spline_segment_basis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) = "DrawSplineSegmentBasis";
extern fn draw_spline_segment_catmull_rom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) = "DrawSplineSegmentCatmullRom";
extern fn draw_spline_segment_bezier_quadratic(p1: Vector2, c2: Vector2, p3: Vector2, thick: f32, color: Color) = "DrawSplineSegmentBezierQuadratic";
extern fn draw_spline_segment_bezier_cubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: f32, color: Color) = "DrawSplineSegmentBezierCubic";
extern fn get_spline_point_linear(start_pos: Vector2, end_pos: Vector2, t: f32) -> Vector2 = "GetSplinePointLinear";
extern fn get_spline_point_basis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) -> Vector2 = "GetSplinePointBasis";
extern fn get_spline_point_catmull_rom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) -> Vector2 = "GetSplinePointCatmullRom";
extern fn get_spline_point_bezier_quadratic(p1: Vector2, c2: Vector2, p3: Vector2, t: f32) -> Vector2 = "GetSplinePointBezierQuadratic";
extern fn get_spline_point_bezier_cubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: f32) -> Vector2 = "GetSplinePointBezierCubic";

// COLLISION
extern fn check_collision_recs(rec1: Rectangle, rec2: Rectangle) -> bool = "CheckCollisionRecs";
extern fn check_collision_circles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) -> bool = "CheckCollisionCircles";
extern fn check_collision_circle_rec(center: Vector2, radius: f32, rec: Rectangle) -> bool = "CheckCollisionCircleRec";
extern fn check_collision_circle_line(center: Vector2, radius: f32, p1: Vector2, p2: Vector2) -> bool = "CheckCollisionCircleLine";
extern fn check_collision_point_rec(point: Vector2, rec: Rectangle) -> bool = "CheckCollisionPointRec";
extern fn check_collision_point_circle(point: Vector2, center: Vector2, radius: f32) -> bool = "CheckCollisionPointCircle";
extern fn check_collision_point_triangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) -> bool = "CheckCollisionPointTriangle";
extern fn check_collision_point_line(point: Vector2, p1: Vector2, p2: Vector2, threshold: i32) -> bool = "CheckCollisionPointLine";
extern fn check_collision_point_poly(point: Vector2, points: const Vector2&, point_count: i32) -> bool = "CheckCollisionPointPoly";
extern fn check_collision_lines(start_pos1: Vector2, end_pos1: Vector2, start_pos2: Vector2, end_pos2: Vector2, collision_point: Vector2&) -> bool = "CheckCollisionLines";
extern fn get_collision_rec(rec1: Rectangle, rec2: Rectangle) -> Rectangle = "GetCollisionRec";
