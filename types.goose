// raylib 6.2
// 64-bit target assumptions
// Pointer fields are represented as u64.

struct Color {
    r: u8, g: u8, b: u8, a: u8,
}

struct Vector2 { x: f32, y: f32 }
struct Vector3 { x: f32, y: f32, z: f32 }
struct Vector4 { x: f32, y: f32, z: f32, w: f32 }

struct Rectangle {
    x: f32, y: f32, width: f32, height: f32,
}

struct Matrix {
    m0: f32, m4: f32, m8: f32, m12: f32,
    m1: f32, m5: f32, m9: f32, m13: f32,
    m2: f32, m6: f32, m10: f32, m14: f32,
    m3: f32, m7: f32, m11: f32, m15: f32,
}

struct Image {
    data:    u64,
    width:   i32, height: i32,
    mipmaps: i32, format: i32,
}

struct Texture2D {
    id:      u32, width: i32, height: i32,
    mipmaps: i32, format: i32,
}

struct RenderTexture2D {
    id:      u32,
    texture: Texture2D,
    depth:   Texture2D,
}

struct Camera2D {
    offset:   Vector2, target: Vector2,
    rotation: f32, zoom: f32,
}

struct Camera3D {
    position: Vector3, target: Vector3,
    up:       Vector3, fovy: f32, projection: i32,
}

struct NPatchInfo {
    source: Rectangle,
    left:   i32, top: i32,
    right:  i32, bottom: i32, layout: i32,
}

struct GlyphInfo {
    value:    i32, offset_x: i32,
    offset_y: i32, advance_x: i32,
    image:    Image,
}

struct Font {
    base_size:     i32, glyph_count: i32,
    glyph_padding: i32,
    texture:       Texture2D,
    recs:          u64, glyphs: u64,
}

struct Shader {
    id:          u32,
    abi_padding: u32,
    locs:        u64,
}

struct Ray {
    position: Vector3, direction: Vector3,
}

struct RayCollision {
    hit:         bool,
    abi_padding: u8[3],
    distance:    f32,
    point:       Vector3, normal: Vector3,
}

struct BoundingBox {
    min: Vector3, max: Vector3,
}

struct FilePathList {
    count:       u32,
    abi_padding: u32,
    paths:       u64,
}

struct AutomationEvent {
    frame: u32, type_: u32, params: i32[4],
}

struct AutomationEventList {
    capacity: u32, count: u32, events: u64,
}

struct Mesh {
    vertex_count:  i32, triangle_count: i32,
    vertices:      u64, texcoords: u64,
    texcoords2:    u64, normals: u64,
    tangents:      u64, colors: u64, indices: u64,
    bone_count:    i32,
    abi_padding:   u32,
    bone_indices:  u64, bone_weights: u64,
    anim_vertices: u64, anim_normals: u64,
    vao_id:        u32, abi_padding2: u32, vbo_id: u64,
}

struct MaterialMap {
    texture: Texture2D, color: Color, value: f32,
}

struct Material {
    shader: Shader, maps: u64, params: f32[4],
}

struct Transform {
    translation: Vector3,
    rotation:    Vector4,
    scale:       Vector3,
}

struct BoneInfo {
    name: u8[32], parent: i32,
}

struct ModelSkeleton {
    bone_count: u32, abi_padding: u32,
    bones:      u64, bind_pose: u64,
}

struct Model {
    transform:     Matrix,
    mesh_count:    i32, material_count: i32,
    meshes:        u64, materials: u64,
    mesh_material: u64,
    skeleton:      ModelSkeleton,
    current_pose:  u64, bone_matrices: u64,
}

struct ModelAnimation {
    name:           u8[32],
    bone_count:     u32, keyframe_count: i32,
    keyframe_poses: u64,
}

struct Wave {
    frame_count: u32, sample_rate: u32,
    sample_size: u32, channels: u32, data: u64,
}

struct AudioStream {
    buffer:      u64, processor: u64,
    sample_rate: u32, sample_size: u32,
    channels:    u32, abi_padding: u32,
}

struct Sound {
    stream:      AudioStream,
    frame_count: u32, abi_padding: u32,
}

struct Music {
    stream:       AudioStream,
    frame_count:  u32,
    looping:      bool,
    abi_padding:  u8[3],
    ctx_type:     i32,
    abi_padding2: u32,
    ctx_data:     u64,
}

struct VrDeviceInfo {
    h_resolution:             i32, v_resolution: i32,
    h_screen_size:            f32, v_screen_size: f32,
    eye_to_screen_distance:   f32,
    lens_separation_distance: f32,
    interpupillary_distance:  f32,
    lens_distortion_values:   f32[4],
    chroma_ab_correction:     f32[4],
}

struct VrStereoConfig {
    projection:          Matrix[2],
    view_offset:         Matrix[2],
    left_lens_center:    f32[2],
    right_lens_center:   f32[2],
    left_screen_center:  f32[2],
    right_screen_center: f32[2],
    scale:               f32[2], scale_in: f32[2],
}
