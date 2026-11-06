import .types;

// FONTS
extern fn get_font_default() -> Font = "GetFontDefault";
extern fn load_font(file_name: const u8&) -> Font = "LoadFont";
extern fn load_font_ex(file_name: const u8&, font_size: i32, codepoints: u64, codepoint_count: i32) -> Font = "LoadFontEx";
extern fn load_font_from_image(image: Image, key: Color, first_char: i32) -> Font = "LoadFontFromImage";
extern fn load_font_from_memory(file_type: const u8&, file_data: const u8&, data_size: i32, font_size: i32, codepoints: u64, codepoint_count: i32) -> Font = "LoadFontFromMemory";
extern fn is_font_valid(font: Font) -> bool = "IsFontValid";
extern fn load_font_data(file_data: const u8&, data_size: i32, font_size: i32, codepoints: u64, codepoint_count: i32, type_: i32, glyph_count: i32&) -> u64 = "LoadFontData";
extern fn gen_image_font_atlas(glyphs: const GlyphInfo&, glyph_recs: u64, glyph_count: i32, font_size: i32, padding: i32, pack_method: i32) -> Image = "GenImageFontAtlas";
extern fn unload_font_data(glyphs: u64, glyph_count: i32) = "UnloadFontData";
extern fn unload_font(font: Font) = "UnloadFont";
extern fn export_font_as_code(font: Font, file_name: const u8&) -> bool = "ExportFontAsCode";

// DRAWING TEXT
extern fn draw_fps(pos_x: i32, pos_y: i32) = "DrawFPS";
extern fn draw_text(text: const u8&, pos_x: i32, pos_y: i32, font_size: i32, color: Color) = "DrawText";
extern fn draw_text_ex(font: Font, text: const u8&, position: Vector2, font_size: f32, spacing: f32, tint: Color) = "DrawTextEx";
extern fn draw_text_pro(font: Font, text: const u8&, position: Vector2, origin: Vector2, rotation: f32, font_size: f32, spacing: f32, tint: Color) = "DrawTextPro";
extern fn draw_text_codepoint(font: Font, codepoint: i32, position: Vector2, font_size: f32, tint: Color) = "DrawTextCodepoint";
extern fn draw_text_codepoints(font: Font, codepoints: const i32&, codepoint_count: i32, position: Vector2, font_size: f32, spacing: f32, tint: Color) = "DrawTextCodepoints";

// TEXT MEASUREMENT
extern fn set_text_line_spacing(spacing: i32) = "SetTextLineSpacing";
extern fn measure_text(text: const u8&, font_size: i32) -> i32 = "MeasureText";
extern fn measure_text_ex(font: Font, text: const u8&, font_size: f32, spacing: f32) -> Vector2 = "MeasureTextEx";
extern fn measure_text_codepoints(font: Font, codepoints: const i32&, length: i32, font_size: f32, spacing: f32) -> Vector2 = "MeasureTextCodepoints";
extern fn get_glyph_index(font: Font, codepoint: i32) -> i32 = "GetGlyphIndex";
extern fn get_glyph_info(font: Font, codepoint: i32) -> GlyphInfo = "GetGlyphInfo";
extern fn get_glyph_atlas_rec(font: Font, codepoint: i32) -> Rectangle = "GetGlyphAtlasRec";

// UTF8
extern fn load_utf8(codepoints: const i32&, length: i32) -> u64 = "LoadUTF8";
extern fn unload_utf8(text: u64) = "UnloadUTF8";
extern fn load_codepoints(text: const u8&, count: i32&) -> u64 = "LoadCodepoints";
extern fn unload_codepoints(codepoints: u64) = "UnloadCodepoints";
extern fn get_codepoint_count(text: const u8&) -> i32 = "GetCodepointCount";
extern fn get_codepoint(text: const u8&, codepoint_size: i32&) -> i32 = "GetCodepoint";
extern fn get_codepoint_next(text: const u8&, codepoint_size: i32&) -> i32 = "GetCodepointNext";
extern fn get_codepoint_previous(text: const u8&, codepoint_size: i32&) -> i32 = "GetCodepointPrevious";
extern fn codepoint_to_utf8(codepoint: i32, utf8_size: i32&) -> u64 = "CodepointToUTF8";

// STRING UTILITIES
extern fn load_text_lines(text: const u8&, count: i32&) -> u64 = "LoadTextLines";
extern fn unload_text_lines(text: u64, line_count: i32) = "UnloadTextLines";
extern fn text_copy(dst: u8&, src: const u8&) -> i32 = "TextCopy";
extern fn text_is_equal(text1: const u8&, text2: const u8&) -> bool = "TextIsEqual";
extern fn text_length(text: const u8&) -> u32 = "TextLength";
// TODO: TextFormat is C variadic.
// extern fn text_format(...) = "TextFormat";
extern fn text_subtext(text: const u8&, position: i32, length: i32) -> u64 = "TextSubtext";
extern fn text_remove_spaces(text: const u8&) -> u64 = "TextRemoveSpaces";
extern fn get_text_between(text: const u8&, begin: const u8&, end: const u8&) -> u64 = "GetTextBetween";
extern fn text_replace(text: const u8&, search: const u8&, replacement: const u8&) -> u64 = "TextReplace";
extern fn text_replace_alloc(text: const u8&, search: const u8&, replacement: const u8&) -> u64 = "TextReplaceAlloc";
extern fn text_replace_between(text: const u8&, begin: const u8&, end: const u8&, replacement: const u8&) -> u64 = "TextReplaceBetween";
extern fn text_replace_between_alloc(text: const u8&, begin: const u8&, end: const u8&, replacement: const u8&) -> u64 = "TextReplaceBetweenAlloc";
extern fn text_insert(text: const u8&, insert: const u8&, position: i32) -> u64 = "TextInsert";
extern fn text_insert_alloc(text: const u8&, insert: const u8&, position: i32) -> u64 = "TextInsertAlloc";
extern fn text_join(text_list: u64, count: i32, delimiter: const u8&) -> u64 = "TextJoin";
extern fn text_split(text: const u8&, delimiter: u8, count: i32&) -> u64 = "TextSplit";
extern fn text_append(text: u8&, append: const u8&, position: i32&) = "TextAppend";
extern fn text_find_index(text: const u8&, search: const u8&) -> i32 = "TextFindIndex";
extern fn text_to_upper(text: const u8&) -> u64 = "TextToUpper";
extern fn text_to_lower(text: const u8&) -> u64 = "TextToLower";
extern fn text_to_pascal(text: const u8&) -> u64 = "TextToPascal";
extern fn text_to_snake(text: const u8&) -> u64 = "TextToSnake";
extern fn text_to_camel(text: const u8&) -> u64 = "TextToCamel";
extern fn text_to_integer(text: const u8&) -> i32 = "TextToInteger";
extern fn text_to_float(text: const u8&) -> f32 = "TextToFloat";
