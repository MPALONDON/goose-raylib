import .types;
// BASIC 3D SHAPES
extern fn draw_line_3d(start_pos: Vector3, end_pos: Vector3, color: Color) = "DrawLine3D";
extern fn draw_point_3d(position: Vector3, color: Color) = "DrawPoint3D";
extern fn draw_circle_3d(center: Vector3, radius: f32, rotation_axis: Vector3, rotation_angle: f32, color: Color) = "DrawCircle3D";
extern fn draw_triangle_3d(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) = "DrawTriangle3D";
extern fn draw_triangle_strip_3d(points: const Vector3&, point_count: i32, color: Color) = "DrawTriangleStrip3D";
extern fn draw_cube(position: Vector3, width: f32, height: f32, length: f32, color: Color) = "DrawCube";
extern fn draw_cube_v(position: Vector3, size: Vector3, color: Color) = "DrawCubeV";
extern fn draw_cube_wires(position: Vector3, width: f32, height: f32, length: f32, color: Color) = "DrawCubeWires";
extern fn draw_cube_wires_v(position: Vector3, size: Vector3, color: Color) = "DrawCubeWiresV";
extern fn draw_sphere(center_pos: Vector3, radius: f32, color: Color) = "DrawSphere";
extern fn draw_sphere_ex(center_pos: Vector3, radius: f32, rings: i32, slices: i32, color: Color) = "DrawSphereEx";
extern fn draw_sphere_wires(center_pos: Vector3, radius: f32, rings: i32, slices: i32, color: Color) = "DrawSphereWires";
extern fn draw_cylinder(position: Vector3, radius_top: f32, radius_bottom: f32, height: f32, sides: i32, color: Color) = "DrawCylinder";
extern fn draw_cylinder_ex(start_pos: Vector3, end_pos: Vector3, start_radius: f32, end_radius: f32, sides: i32, color: Color) = "DrawCylinderEx";
extern fn draw_cylinder_wires(position: Vector3, radius_top: f32, radius_bottom: f32, height: f32, sides: i32, color: Color) = "DrawCylinderWires";
extern fn draw_cylinder_wires_ex(start_pos: Vector3, end_pos: Vector3, start_radius: f32, end_radius: f32, sides: i32, color: Color) = "DrawCylinderWiresEx";
extern fn draw_capsule(start_pos: Vector3, end_pos: Vector3, radius: f32, rings: i32, slices: i32, color: Color) = "DrawCapsule";
extern fn draw_capsule_wires(start_pos: Vector3, end_pos: Vector3, radius: f32, rings: i32, slices: i32, color: Color) = "DrawCapsuleWires";
extern fn draw_plane(center_pos: Vector3, size: Vector2, color: Color) = "DrawPlane";
extern fn draw_ray(ray: Ray, color: Color) = "DrawRay";
extern fn draw_grid(slices: i32, spacing: f32) = "DrawGrid";

// MODELS
extern fn load_model(file_name: const u8&) -> Model = "LoadModel";
fn load_model(file_name: const u8[:]) -> Model {
    let file_name = str(file_name, "\0");
    return load_model(file_name[0]);
}
extern fn load_model_from_mesh(mesh: Mesh) -> Model = "LoadModelFromMesh";
extern fn is_model_valid(model: Model) -> bool = "IsModelValid";
extern fn unload_model(model: Model) = "UnloadModel";
extern fn get_model_bounding_box(model: Model) -> BoundingBox = "GetModelBoundingBox";
extern fn draw_model(model: Model, position: Vector3, scale: f32, tint: Color) = "DrawModel";
extern fn draw_model_ex(model: Model, position: Vector3, rotation_axis: Vector3, rotation_angle: f32, scale: Vector3, tint: Color) = "DrawModelEx";
extern fn draw_model_wires(model: Model, position: Vector3, scale: f32, tint: Color) = "DrawModelWires";
extern fn draw_model_wires_ex(model: Model, position: Vector3, rotation_axis: Vector3, rotation_angle: f32, scale: Vector3, tint: Color) = "DrawModelWiresEx";
extern fn draw_bounding_box(box: BoundingBox, color: Color) = "DrawBoundingBox";
extern fn draw_billboard(camera: Camera3D, texture: Texture2D, position: Vector3, scale: f32, tint: Color) = "DrawBillboard";
extern fn draw_billboard_rec(camera: Camera3D, texture: Texture2D, rec: Rectangle, position: Vector3, size: Vector2, tint: Color) = "DrawBillboardRec";
extern fn draw_billboard_pro(camera: Camera3D, texture: Texture2D, rec: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color) = "DrawBillboardPro";

// MESH
extern fn upload_mesh(mesh: Mesh&, dynamic: bool) = "UploadMesh";
extern fn update_mesh_buffer(mesh: Mesh, index: i32, data: u64, data_size: i32, offset: i32) = "UpdateMeshBuffer";
extern fn unload_mesh(mesh: Mesh) = "UnloadMesh";
extern fn draw_mesh(mesh: Mesh, material: Material, transform: Matrix) = "DrawMesh";
extern fn draw_mesh_instanced(mesh: Mesh, material: Material, transforms: const Matrix&, instances: i32) = "DrawMeshInstanced";
extern fn get_mesh_bounding_box(mesh: Mesh) -> BoundingBox = "GetMeshBoundingBox";
extern fn gen_mesh_tangents(mesh: Mesh&) = "GenMeshTangents";
extern fn export_mesh(mesh: Mesh, file_name: const u8&) -> bool = "ExportMesh";
extern fn export_mesh_as_code(mesh: Mesh, file_name: const u8&) -> bool = "ExportMeshAsCode";

// MESH GENERATION
extern fn gen_mesh_poly(sides: i32, radius: f32) -> Mesh = "GenMeshPoly";
extern fn gen_mesh_plane(width: f32, length: f32, res_x: i32, res_z: i32) -> Mesh = "GenMeshPlane";
extern fn gen_mesh_cube(width: f32, height: f32, length: f32) -> Mesh = "GenMeshCube";
extern fn gen_mesh_sphere(radius: f32, rings: i32, slices: i32) -> Mesh = "GenMeshSphere";
extern fn gen_mesh_hemi_sphere(radius: f32, rings: i32, slices: i32) -> Mesh = "GenMeshHemiSphere";
extern fn gen_mesh_cylinder(radius: f32, height: f32, slices: i32) -> Mesh = "GenMeshCylinder";
extern fn gen_mesh_cone(radius: f32, height: f32, slices: i32) -> Mesh = "GenMeshCone";
extern fn gen_mesh_torus(radius: f32, size: f32, rad_seg: i32, sides: i32) -> Mesh = "GenMeshTorus";
extern fn gen_mesh_knot(radius: f32, size: f32, rad_seg: i32, sides: i32) -> Mesh = "GenMeshKnot";
extern fn gen_mesh_heightmap(heightmap: Image, size: Vector3) -> Mesh = "GenMeshHeightmap";
extern fn gen_mesh_cubicmap(cubicmap: Image, cube_size: Vector3) -> Mesh = "GenMeshCubicmap";

// MATERIALS
extern fn load_materials(file_name: const u8&, material_count: i32&) -> u64 = "LoadMaterials";
extern fn load_material_default() -> Material = "LoadMaterialDefault";
extern fn is_material_valid(material: Material) -> bool = "IsMaterialValid";
extern fn unload_material(material: Material) = "UnloadMaterial";
extern fn set_material_texture(material: Material&, map_type: i32, texture: Texture2D) = "SetMaterialTexture";
extern fn set_model_mesh_material(model: Model&, mesh_id: i32, material_id: i32) = "SetModelMeshMaterial";

// ANIMATION
extern fn load_model_animations(file_name: const u8&, anim_count: i32&) -> u64 = "LoadModelAnimations";
extern fn update_model_animation(model: Model, anim: ModelAnimation, frame: f32) = "UpdateModelAnimation";
extern fn update_model_animation_ex(model: Model, anim_a: ModelAnimation, frame_a: f32, anim_b: ModelAnimation, frame_b: f32, blend: f32) = "UpdateModelAnimationEx";
extern fn unload_model_animations(animations: u64, anim_count: i32) = "UnloadModelAnimations";
extern fn is_model_animation_valid(model: Model, anim: ModelAnimation) -> bool = "IsModelAnimationValid";

// 3D COLLISION
extern fn check_collision_spheres(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) -> bool = "CheckCollisionSpheres";
extern fn check_collision_boxes(box1: BoundingBox, box2: BoundingBox) -> bool = "CheckCollisionBoxes";
extern fn check_collision_box_sphere(box: BoundingBox, center: Vector3, radius: f32) -> bool = "CheckCollisionBoxSphere";
extern fn get_ray_collision_sphere(ray: Ray, center: Vector3, radius: f32) -> RayCollision = "GetRayCollisionSphere";
extern fn get_ray_collision_box(ray: Ray, box: BoundingBox) -> RayCollision = "GetRayCollisionBox";
extern fn get_ray_collision_mesh(ray: Ray, mesh: Mesh, transform: Matrix) -> RayCollision = "GetRayCollisionMesh";
extern fn get_ray_collision_triangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) -> RayCollision = "GetRayCollisionTriangle";
extern fn get_ray_collision_quad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) -> RayCollision = "GetRayCollisionQuad";
