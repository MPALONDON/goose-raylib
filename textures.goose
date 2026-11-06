import .types;

// IMAGE LOADING
extern fn load_image(file_name: const u8&) -> Image = "LoadImage";
extern fn load_image_raw(file_name: const u8&, width: i32, height: i32, format: i32, header_size: i32) -> Image = "LoadImageRaw";
extern fn load_image_anim(file_name: const u8&, frames: i32&) -> Image = "LoadImageAnim";
extern fn load_image_anim_from_memory(file_type: const u8&, file_data: const u8&, data_size: i32, frames: i32&) -> Image = "LoadImageAnimFromMemory";
extern fn load_image_from_memory(file_type: const u8&, file_data: const u8&, data_size: i32) -> Image = "LoadImageFromMemory";
extern fn load_image_from_texture(texture: Texture2D) -> Image = "LoadImageFromTexture";
extern fn load_image_from_screen() -> Image = "LoadImageFromScreen";
extern fn is_image_valid(image: Image) -> bool = "IsImageValid";
extern fn unload_image(image: Image) = "UnloadImage";
extern fn export_image(image: Image, file_name: const u8&) -> bool = "ExportImage";
extern fn export_image_to_memory(image: Image, file_type: const u8&, file_size: i32&) -> u64 = "ExportImageToMemory";
extern fn export_image_as_code(image: Image, file_name: const u8&) -> bool = "ExportImageAsCode";

// IMAGE GENERATION
extern fn gen_image_color(width: i32, height: i32, color: Color) -> Image = "GenImageColor";
extern fn gen_image_gradient_linear(width: i32, height: i32, direction: i32, start: Color, end: Color) -> Image = "GenImageGradientLinear";
extern fn gen_image_gradient_radial(width: i32, height: i32, density: f32, inner: Color, outer: Color) -> Image = "GenImageGradientRadial";
extern fn gen_image_gradient_square(width: i32, height: i32, density: f32, inner: Color, outer: Color) -> Image = "GenImageGradientSquare";
extern fn gen_image_checked(width: i32, height: i32, checks_x: i32, checks_y: i32, col1: Color, col2: Color) -> Image = "GenImageChecked";
extern fn gen_image_white_noise(width: i32, height: i32, factor: f32) -> Image = "GenImageWhiteNoise";
extern fn gen_image_perlin_noise(width: i32, height: i32, offset_x: i32, offset_y: i32, scale: f32) -> Image = "GenImagePerlinNoise";
extern fn gen_image_cellular(width: i32, height: i32, tile_size: i32) -> Image = "GenImageCellular";
extern fn gen_image_text(width: i32, height: i32, text: const u8&) -> Image = "GenImageText";

// IMAGE MANIPULATION
extern fn image_copy(image: Image) -> Image = "ImageCopy";
extern fn image_from_image(image: Image, rec: Rectangle) -> Image = "ImageFromImage";
extern fn image_from_channel(image: Image, selected_channel: i32) -> Image = "ImageFromChannel";
extern fn image_text(text: const u8&, font_size: i32, color: Color) -> Image = "ImageText";
fn image_text(text: const u8[:], font_size: i32, color: Color) -> Image {
    let text = str(text, "\0");
    return image_text(text[0], font_size, color);
}
extern fn image_text_ex(font: Font, text: const u8&, font_size: f32, spacing: f32, tint: Color) -> Image = "ImageTextEx";
fn image_text_ex(font: Font, text: const u8[:], font_size: f32, spacing: f32, tint: Color) -> Image {
    let text = str(text, "\0");
    return image_text_ex(font, text[0], font_size, spacing, tint);
}
extern fn image_format(image: Image&, new_format: i32) = "ImageFormat";
extern fn image_to_pot(image: Image&, fill: Color) = "ImageToPOT";
extern fn image_crop(image: Image&, crop: Rectangle) = "ImageCrop";
extern fn image_alpha_crop(image: Image&, threshold: f32) = "ImageAlphaCrop";
extern fn image_alpha_clear(image: Image&, color: Color, threshold: f32) = "ImageAlphaClear";
extern fn image_alpha_mask(image: Image&, alpha_mask: Image) = "ImageAlphaMask";
extern fn image_alpha_premultiply(image: Image&) = "ImageAlphaPremultiply";
extern fn image_blur_gaussian(image: Image&, blur_size: i32) = "ImageBlurGaussian";
extern fn image_kernel_convolution(image: Image&, kernel: const f32&, kernel_size: i32) = "ImageKernelConvolution";
extern fn image_resize(image: Image&, new_width: i32, new_height: i32) = "ImageResize";
extern fn image_resize_nn(image: Image&, new_width: i32, new_height: i32) = "ImageResizeNN";
extern fn image_resize_canvas(image: Image&, new_width: i32, new_height: i32, offset_x: i32, offset_y: i32, fill: Color) = "ImageResizeCanvas";
extern fn image_mipmaps(image: Image&) = "ImageMipmaps";
extern fn image_dither(image: Image&, r_bpp: i32, g_bpp: i32, b_bpp: i32, a_bpp: i32) = "ImageDither";
extern fn image_flip_vertical(image: Image&) = "ImageFlipVertical";
extern fn image_flip_horizontal(image: Image&) = "ImageFlipHorizontal";
extern fn image_rotate(image: Image&, degrees: i32) = "ImageRotate";
extern fn image_rotate_cw(image: Image&) = "ImageRotateCW";
extern fn image_rotate_ccw(image: Image&) = "ImageRotateCCW";
extern fn image_color_tint(image: Image&, color: Color) = "ImageColorTint";
extern fn image_color_invert(image: Image&) = "ImageColorInvert";
extern fn image_color_grayscale(image: Image&) = "ImageColorGrayscale";
extern fn image_color_contrast(image: Image&, contrast: i32) = "ImageColorContrast";
extern fn image_color_brightness(image: Image&, brightness: i32) = "ImageColorBrightness";
extern fn image_color_replace(image: Image&, color: Color, replace: Color) = "ImageColorReplace";
extern fn load_image_colors(image: Image) -> u64 = "LoadImageColors";
extern fn load_image_palette(image: Image, max_palette_size: i32, color_count: i32&) -> u64 = "LoadImagePalette";
extern fn unload_image_colors(colors: u64) = "UnloadImageColors";
extern fn unload_image_palette(colors: u64) = "UnloadImagePalette";
extern fn get_image_alpha_border(image: Image, threshold: f32) -> Rectangle = "GetImageAlphaBorder";
extern fn get_image_color(image: Image, x: i32, y: i32) -> Color = "GetImageColor";

// IMAGE DRAWING (CPU)
extern fn image_clear_background(dst: Image&, color: Color) = "ImageClearBackground";
extern fn image_draw_pixel(dst: Image&, pos_x: i32, pos_y: i32, color: Color) = "ImageDrawPixel";
extern fn image_draw_pixel_v(dst: Image&, position: Vector2, color: Color) = "ImageDrawPixelV";
extern fn image_draw_line(dst: Image&, start_x: i32, start_y: i32, end_x: i32, end_y: i32, color: Color) = "ImageDrawLine";
extern fn image_draw_line_v(dst: Image&, start: Vector2, end: Vector2, color: Color) = "ImageDrawLineV";
extern fn image_draw_line_ex(dst: Image&, start: Vector2, end: Vector2, thick: i32, color: Color) = "ImageDrawLineEx";
extern fn image_draw_line_strip(dst: Image&, points: const Vector2&, point_count: i32, color: Color) = "ImageDrawLineStrip";
extern fn image_draw_triangle(dst: Image&, v1: Vector2, v2: Vector2, v3: Vector2, color: Color) = "ImageDrawTriangle";
extern fn image_draw_triangle_gradient(dst: Image&, v1: Vector2, v2: Vector2, v3: Vector2, c1: Color, c2: Color, c3: Color) = "ImageDrawTriangleGradient";
extern fn image_draw_triangle_lines(dst: Image&, v1: Vector2, v2: Vector2, v3: Vector2, color: Color) = "ImageDrawTriangleLines";
extern fn image_draw_triangle_fan(dst: Image&, points: const Vector2&, point_count: i32, color: Color) = "ImageDrawTriangleFan";
extern fn image_draw_triangle_strip(dst: Image&, points: const Vector2&, point_count: i32, color: Color) = "ImageDrawTriangleStrip";
extern fn image_draw_rectangle(dst: Image&, pos_x: i32, pos_y: i32, width: i32, height: i32, color: Color) = "ImageDrawRectangle";
extern fn image_draw_rectangle_v(dst: Image&, position: Vector2, size: Vector2, color: Color) = "ImageDrawRectangleV";
extern fn image_draw_rectangle_rec(dst: Image&, rec: Rectangle, color: Color) = "ImageDrawRectangleRec";
extern fn image_draw_rectangle_pro(dst: Image&, rec: Rectangle, origin: Vector2, rotation: f32, color: Color) = "ImageDrawRectanglePro";
extern fn image_draw_rectangle_lines(dst: Image&, pos_x: i32, pos_y: i32, width: i32, height: i32, color: Color) = "ImageDrawRectangleLines";
extern fn image_draw_rectangle_lines_ex(dst: Image&, rec: Rectangle, thick: i32, color: Color) = "ImageDrawRectangleLinesEx";
extern fn image_draw_rectangle_gradient_ex(dst: Image&, rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) = "ImageDrawRectangleGradientEx";
extern fn image_draw_circle(dst: Image&, center_x: i32, center_y: i32, radius: i32, color: Color) = "ImageDrawCircle";
extern fn image_draw_circle_v(dst: Image&, center: Vector2, radius: i32, color: Color) = "ImageDrawCircleV";
extern fn image_draw_circle_lines(dst: Image&, center_x: i32, center_y: i32, radius: i32, color: Color) = "ImageDrawCircleLines";
extern fn image_draw_circle_lines_v(dst: Image&, center: Vector2, radius: i32, color: Color) = "ImageDrawCircleLinesV";
extern fn image_draw_circle_gradient(dst: Image&, center: Vector2, radius: f32, inner: Color, outer: Color) = "ImageDrawCircleGradient";
extern fn image_draw_image(dst: Image&, src: Image, pos_x: i32, pos_y: i32, tint: Color) = "ImageDrawImage";
extern fn image_draw_image_ex(dst: Image&, src: Image, position: Vector2, rotation: f32, scale: f32, tint: Color) = "ImageDrawImageEx";
extern fn image_draw_image_rec(dst: Image&, src: Image, src_rec: Rectangle, position: Vector2, tint: Color) = "ImageDrawImageRec";
extern fn image_draw_image_pro(dst: Image&, src: Image, src_rec: Rectangle, dst_rec: Rectangle, origin: Vector2, rotation: f32, tint: Color) = "ImageDrawImagePro";
extern fn image_draw_text(dst: Image&, text: const u8&, pos_x: i32, pos_y: i32, font_size: i32, color: Color) = "ImageDrawText";
extern fn image_draw_text_ex(dst: Image&, font: Font, text: const u8&, position: Vector2, font_size: f32, spacing: f32, tint: Color) = "ImageDrawTextEx";
extern fn image_draw_text_pro(dst: Image&, font: Font, text: const u8&, position: Vector2, origin: Vector2, rotation: f32, font_size: f32, spacing: f32, tint: Color) = "ImageDrawTextPro";

// TEXTURE LOADING
extern fn load_texture(file_name: const u8&) -> Texture2D = "LoadTexture";
fn load_texture(file_name: const u8[:]) {
    let file_name = str(file_name, "\0");
    return load_texture(file_name[0]);
}
extern fn load_texture_from_image(image: Image) -> Texture2D = "LoadTextureFromImage";
extern fn load_texture_cubemap(image: Image, layout: i32) -> Texture2D = "LoadTextureCubemap";
extern fn load_render_texture(width: i32, height: i32) -> RenderTexture2D = "LoadRenderTexture";
extern fn load_render_texture_ex(width: i32, height: i32, format: i32) -> RenderTexture2D = "LoadRenderTextureEx";
extern fn is_texture_valid(texture: Texture2D) -> bool = "IsTextureValid";
extern fn unload_texture(texture: Texture2D) = "UnloadTexture";
extern fn is_render_texture_valid(target: RenderTexture2D) -> bool = "IsRenderTextureValid";
extern fn unload_render_texture(target: RenderTexture2D) = "UnloadRenderTexture";
extern fn update_texture(texture: Texture2D, pixels: const u8&) = "UpdateTexture";
extern fn update_texture_rec(texture: Texture2D, rec: Rectangle, pixels: const u8&) = "UpdateTextureRec";
extern fn gen_texture_mipmaps(texture: Texture2D&) = "GenTextureMipmaps";
extern fn set_texture_filter(texture: Texture2D, filter: i32) = "SetTextureFilter";
extern fn set_texture_wrap(texture: Texture2D, wrap: i32) = "SetTextureWrap";

// TEXTURE DRAWING
extern fn draw_texture(texture: Texture2D, pos_x: i32, pos_y: i32, tint: Color) = "DrawTexture";
extern fn draw_texture_v(texture: Texture2D, position: Vector2, tint: Color) = "DrawTextureV";
extern fn draw_texture_ex(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) = "DrawTextureEx";
extern fn draw_texture_rec(texture: Texture2D, rec: Rectangle, position: Vector2, tint: Color) = "DrawTextureRec";
extern fn draw_texture_pro(texture: Texture2D, src_rec: Rectangle, dst_rec: Rectangle, origin: Vector2, rotation: f32, tint: Color) = "DrawTexturePro";
extern fn draw_texture_n_patch(texture: Texture2D, n_patch_info: NPatchInfo, dst_rec: Rectangle, origin: Vector2, rotation: f32, tint: Color) = "DrawTextureNPatch";

// COLORS
extern fn color_is_equal(col1: Color, col2: Color) -> bool = "ColorIsEqual";
extern fn fade(color: Color, alpha: f32) -> Color = "Fade";
extern fn color_to_int(color: Color) -> i32 = "ColorToInt";
extern fn color_normalize(color: Color) -> Vector4 = "ColorNormalize";
extern fn color_from_normalized(normalized: Vector4) -> Color = "ColorFromNormalized";
extern fn color_to_hsv(color: Color) -> Vector3 = "ColorToHSV";
extern fn color_from_hsv(hue: f32, saturation: f32, value: f32) -> Color = "ColorFromHSV";
extern fn color_tint(color: Color, tint: Color) -> Color = "ColorTint";
extern fn color_brightness(color: Color, factor: f32) -> Color = "ColorBrightness";
extern fn color_contrast(color: Color, contrast: f32) -> Color = "ColorContrast";
extern fn color_alpha(color: Color, alpha: f32) -> Color = "ColorAlpha";
extern fn color_alpha_blend(dst: Color, src: Color, tint: Color) -> Color = "ColorAlphaBlend";
extern fn color_lerp(color1: Color, color2: Color, factor: f32) -> Color = "ColorLerp";
extern fn get_color(hex_value: u32) -> Color = "GetColor";
extern fn get_pixel_color(src_ptr: u64, format: i32) -> Color = "GetPixelColor";
extern fn set_pixel_color(dst_ptr: u64, color: Color, format: i32) = "SetPixelColor";
extern fn get_pixel_data_size(width: i32, height: i32, format: i32) -> i32 = "GetPixelDataSize";
