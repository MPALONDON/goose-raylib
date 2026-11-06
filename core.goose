import .types;

// WINDOW

extern fn init_window(width: i32, height: i32, title: const u8&) = "InitWindow";
extern fn close_window() = "CloseWindow";
extern fn window_should_close() -> bool = "WindowShouldClose";
extern fn is_window_ready() -> bool = "IsWindowReady";
extern fn is_window_fullscreen() -> bool = "IsWindowFullscreen";
extern fn is_window_hidden() -> bool = "IsWindowHidden";
extern fn is_window_minimized() -> bool = "IsWindowMinimized";
extern fn is_window_maximized() -> bool = "IsWindowMaximized";
extern fn is_window_focused() -> bool = "IsWindowFocused";
extern fn is_window_resized() -> bool = "IsWindowResized";
extern fn is_window_state(flag: u32) -> bool = "IsWindowState";
extern fn set_window_state(flags: u32) = "SetWindowState";
extern fn clear_window_state(flags: u32) = "ClearWindowState";
extern fn toggle_fullscreen() = "ToggleFullscreen";
extern fn toggle_borderless_windowed() = "ToggleBorderlessWindowed";
extern fn maximize_window() = "MaximizeWindow";
extern fn minimize_window() = "MinimizeWindow";
extern fn restore_window() = "RestoreWindow";
extern fn set_window_icon(image: Image) = "SetWindowIcon";
extern fn set_window_icons(images: Image&, count: i32) = "SetWindowIcons";
extern fn set_window_title(title: const u8&) = "SetWindowTitle";
extern fn set_window_position(x: i32, y: i32) = "SetWindowPosition";
extern fn set_window_monitor(monitor: i32) = "SetWindowMonitor";
extern fn set_window_min_size(width: i32, height: i32) = "SetWindowMinSize";
extern fn set_window_max_size(width: i32, height: i32) = "SetWindowMaxSize";
extern fn set_window_size(width: i32, height: i32) = "SetWindowSize";
extern fn set_window_opacity(opacity: f32) = "SetWindowOpacity";
extern fn set_window_focused() = "SetWindowFocused";
extern fn get_window_handle() -> u64 = "GetWindowHandle";

extern fn get_screen_width() -> i32 = "GetScreenWidth";
extern fn get_screen_height() -> i32 = "GetScreenHeight";
extern fn get_render_width() -> i32 = "GetRenderWidth";
extern fn get_render_height() -> i32 = "GetRenderHeight";
extern fn get_monitor_count() -> i32 = "GetMonitorCount";
extern fn get_current_monitor() -> i32 = "GetCurrentMonitor";
extern fn get_monitor_position(monitor: i32) -> Vector2 = "GetMonitorPosition";
extern fn get_monitor_width(monitor: i32) -> i32 = "GetMonitorWidth";
extern fn get_monitor_height(monitor: i32) -> i32 = "GetMonitorHeight";
extern fn get_monitor_physical_width(monitor: i32) -> i32 = "GetMonitorPhysicalWidth";
extern fn get_monitor_physical_height(monitor: i32) -> i32 = "GetMonitorPhysicalHeight";
extern fn get_monitor_refresh_rate(monitor: i32) -> i32 = "GetMonitorRefreshRate";
extern fn get_window_position() -> Vector2 = "GetWindowPosition";
extern fn get_window_scale_dpi() -> Vector2 = "GetWindowScaleDPI";
extern fn get_monitor_name(monitor: i32) -> u64 = "GetMonitorName";
extern fn set_clipboard_text(text: const u8&) = "SetClipboardText";
extern fn get_clipboard_text() -> u64 = "GetClipboardText";
extern fn get_clipboard_image() -> Image = "GetClipboardImage";
extern fn enable_event_waiting() = "EnableEventWaiting";
extern fn disable_event_waiting() = "DisableEventWaiting";

// CURSOR
extern fn show_cursor() = "ShowCursor";
extern fn hide_cursor() = "HideCursor";
extern fn is_cursor_hidden() -> bool = "IsCursorHidden";
extern fn enable_cursor() = "EnableCursor";
extern fn disable_cursor() = "DisableCursor";
extern fn is_cursor_on_screen() -> bool = "IsCursorOnScreen";

// DRAWING MODES
extern fn clear_background(color: Color) = "ClearBackground";
extern fn begin_drawing() = "BeginDrawing";
extern fn end_drawing() = "EndDrawing";
extern fn begin_mode_2d(camera: Camera2D) = "BeginMode2D";
extern fn end_mode_2d() = "EndMode2D";
extern fn begin_mode_3d(camera: Camera3D) = "BeginMode3D";
extern fn end_mode_3d() = "EndMode3D";
extern fn begin_texture_mode(target: RenderTexture2D) = "BeginTextureMode";
extern fn end_texture_mode() = "EndTextureMode";
extern fn begin_shader_mode(shader: Shader) = "BeginShaderMode";
extern fn end_shader_mode() = "EndShaderMode";
extern fn begin_blend_mode(mode: i32) = "BeginBlendMode";
extern fn end_blend_mode() = "EndBlendMode";
extern fn begin_scissor_mode(x: i32, y: i32, width: i32, height: i32) = "BeginScissorMode";
extern fn end_scissor_mode() = "EndScissorMode";
extern fn begin_vr_stereo_mode(config: VrStereoConfig) = "BeginVrStereoMode";
extern fn end_vr_stereo_mode() = "EndVrStereoMode";
extern fn load_vr_stereo_config(device: VrDeviceInfo) -> VrStereoConfig = "LoadVrStereoConfig";
extern fn unload_vr_stereo_config(config: VrStereoConfig) = "UnloadVrStereoConfig";

// SHADERS
extern fn load_shader(vs_file_name: const u8&, fs_file_name: const u8&) -> Shader = "LoadShader";
extern fn load_shader_from_memory(vs_code: const u8&, fs_code: const u8&) -> Shader = "LoadShaderFromMemory";
extern fn is_shader_valid(shader: Shader) -> bool = "IsShaderValid";
extern fn get_shader_location(shader: Shader, uniform_name: const u8&) -> i32 = "GetShaderLocation";
extern fn get_shader_location_attrib(shader: Shader, attrib_name: const u8&) -> i32 = "GetShaderLocationAttrib";
extern fn set_shader_value(shader: Shader, loc_index: i32, value: const u8&, uniform_type: i32) = "SetShaderValue";
extern fn set_shader_value_v(shader: Shader, loc_index: i32, value: const u8&, uniform_type: i32, count: i32) = "SetShaderValueV";
extern fn set_shader_value_matrix(shader: Shader, loc_index: i32, mat: Matrix) = "SetShaderValueMatrix";
extern fn set_shader_value_texture(shader: Shader, loc_index: i32, texture: Texture2D) = "SetShaderValueTexture";
extern fn unload_shader(shader: Shader) = "UnloadShader";

// SCREEN-SPACE
extern fn get_screen_to_world_ray(position: Vector2, camera: Camera3D) -> Ray = "GetScreenToWorldRay";
extern fn get_screen_to_world_ray_ex(position: Vector2, camera: Camera3D, width: i32, height: i32) -> Ray = "GetScreenToWorldRayEx";
extern fn get_world_to_screen(position: Vector3, camera: Camera3D) -> Vector2 = "GetWorldToScreen";
extern fn get_world_to_screen_ex(position: Vector3, camera: Camera3D, width: i32, height: i32) -> Vector2 = "GetWorldToScreenEx";
extern fn get_world_to_screen_2d(position: Vector2, camera: Camera2D) -> Vector2 = "GetWorldToScreen2D";
extern fn get_screen_to_world_2d(position: Vector2, camera: Camera2D) -> Vector2 = "GetScreenToWorld2D";
extern fn get_camera_matrix(camera: Camera3D) -> Matrix = "GetCameraMatrix";
extern fn get_camera_matrix_2d(camera: Camera2D) -> Matrix = "GetCameraMatrix2D";

// TIMING
extern fn set_target_fps(fps: i32) = "SetTargetFPS";
extern fn get_frame_time() -> f32 = "GetFrameTime";
extern fn get_time() -> f64 = "GetTime";
extern fn get_fps() -> i32 = "GetFPS";
extern fn swap_screen_buffer() = "SwapScreenBuffer";
extern fn poll_input_events() = "PollInputEvents";
extern fn wait_time(seconds: f64) = "WaitTime";

// RANDOM
extern fn set_random_seed(seed: u32) = "SetRandomSeed";
extern fn get_random_value(min: i32, max: i32) -> i32 = "GetRandomValue";
extern fn load_random_sequence(count: u32, min: i32, max: i32) -> u64 = "LoadRandomSequence";
extern fn unload_random_sequence(sequence: u64) = "UnloadRandomSequence";

// MISC / LOGGING / MEMORY
extern fn take_screenshot(file_name: const u8&) = "TakeScreenshot";
extern fn set_config_flags(flags: u32) = "SetConfigFlags";
extern fn open_url(url: const u8&) = "OpenURL";
extern fn set_trace_log_level(log_level: i32) = "SetTraceLogLevel";
// TODO: TraceLog is variadic.
// extern fn trace_log(...) = "TraceLog";
// TODO: Callback function pointer.
// extern fn set_trace_log_callback(callback: u64) = "SetTraceLogCallback";
extern fn mem_alloc(size: u32) -> u64 = "MemAlloc";
extern fn mem_realloc(ptr: u64, size: u32) -> u64 = "MemRealloc";
extern fn mem_free(ptr: u64) = "MemFree";

// FILE I/O
extern fn load_file_data(file_name: const u8&, data_size: i32&) -> u64 = "LoadFileData";
extern fn unload_file_data(data: u64) = "UnloadFileData";
extern fn save_file_data(file_name: const u8&, data: const u8&, data_size: i32) -> bool = "SaveFileData";
extern fn export_data_as_code(data: const u8&, data_size: i32, file_name: const u8&) -> bool = "ExportDataAsCode";
extern fn load_file_text(file_name: const u8&) -> u64 = "LoadFileText";
extern fn unload_file_text(text: u64) = "UnloadFileText";
extern fn save_file_text(file_name: const u8&, text: const u8&) -> bool = "SaveFileText";
// TODO: File callback function pointers.
// SetLoadFileDataCallback
// SetSaveFileDataCallback
// SetLoadFileTextCallback
// SetSaveFileTextCallback

extern fn file_rename(file_name: const u8&, file_rename: const u8&) -> i32 = "FileRename";
extern fn file_remove(file_name: const u8&) -> i32 = "FileRemove";
extern fn file_copy(src_path: const u8&, dst_path: const u8&) -> i32 = "FileCopy";
extern fn file_move(src_path: const u8&, dst_path: const u8&) -> i32 = "FileMove";
extern fn file_text_replace(file_name: const u8&, search: const u8&, replacement: const u8&) -> i32 = "FileTextReplace";
extern fn file_text_find_index(file_name: const u8&, search: const u8&) -> i32 = "FileTextFindIndex";
extern fn file_exists(file_name: const u8&) -> bool = "FileExists";
extern fn directory_exists(dir_path: const u8&) -> bool = "DirectoryExists";
extern fn is_file_extension(file_name: const u8&, ext: const u8&) -> bool = "IsFileExtension";
extern fn is_file_hidden(file_path: const u8&) -> bool = "IsFileHidden";
extern fn get_file_length(file_name: const u8&) -> i32 = "GetFileLength";
extern fn get_file_mod_time(file_name: const u8&) -> i64 = "GetFileModTime"; // C long: Linux x64
extern fn get_file_extension(file_name: const u8&) -> u64 = "GetFileExtension";
extern fn get_file_name(file_path: const u8&) -> u64 = "GetFileName";
extern fn get_file_name_without_ext(file_path: const u8&) -> u64 = "GetFileNameWithoutExt";
extern fn get_directory_path(file_path: const u8&) -> u64 = "GetDirectoryPath";
extern fn get_prev_directory_path(dir_path: const u8&) -> u64 = "GetPrevDirectoryPath";
extern fn get_working_directory() -> u64 = "GetWorkingDirectory";
extern fn get_application_directory() -> u64 = "GetApplicationDirectory";
extern fn make_directory(dir_path: const u8&) -> i32 = "MakeDirectory";
extern fn change_directory(dir_path: const u8&) -> i32 = "ChangeDirectory";
extern fn is_path_file(path: const u8&) -> bool = "IsPathFile";
extern fn is_path_directory(path: const u8&) -> bool = "IsPathDirectory";
extern fn is_path_absolute(path: const u8&) -> bool = "IsPathAbsolute";
extern fn is_file_name_valid(file_name: const u8&) -> bool = "IsFileNameValid";
extern fn load_directory_files(dir_path: const u8&) -> FilePathList = "LoadDirectoryFiles";
extern fn load_directory_files_ex(base_path: const u8&, filter: const u8&, scan_subdirs: bool) -> FilePathList = "LoadDirectoryFilesEx";
extern fn unload_directory_files(files: FilePathList) = "UnloadDirectoryFiles";
extern fn is_file_dropped() -> bool = "IsFileDropped";
extern fn load_dropped_files() -> FilePathList = "LoadDroppedFiles";
extern fn unload_dropped_files(files: FilePathList) = "UnloadDroppedFiles";
extern fn get_directory_file_count(dir_path: const u8&) -> u32 = "GetDirectoryFileCount";
extern fn get_directory_file_count_ex(base_path: const u8&, filter: const u8&, scan_subdirs: bool) -> u32 = "GetDirectoryFileCountEx";

// COMPRESSION / HASHING
extern fn compress_data(data: const u8&, data_size: i32, comp_data_size: i32&) -> u64 = "CompressData";
extern fn decompress_data(comp_data: const u8&, comp_data_size: i32, data_size: i32&) -> u64 = "DecompressData";
extern fn encode_data_base64(data: const u8&, data_size: i32, output_size: i32&) -> u64 = "EncodeDataBase64";
extern fn decode_data_base64(text: const u8&, output_size: i32&) -> u64 = "DecodeDataBase64";
extern fn compute_crc32(data: const u8&, data_size: i32) -> u32 = "ComputeCRC32";
extern fn compute_md5(data: const u8&, data_size: i32) -> u64 = "ComputeMD5";
extern fn compute_sha1(data: const u8&, data_size: i32) -> u64 = "ComputeSHA1";
extern fn compute_sha256(data: const u8&, data_size: i32) -> u64 = "ComputeSHA256";

// AUTOMATION
extern fn load_automation_event_list(file_name: const u8&) -> AutomationEventList = "LoadAutomationEventList";
extern fn unload_automation_event_list(list: AutomationEventList) = "UnloadAutomationEventList";
extern fn export_automation_event_list(list: AutomationEventList, file_name: const u8&) -> bool = "ExportAutomationEventList";
extern fn set_automation_event_list(list: AutomationEventList&) = "SetAutomationEventList";
extern fn set_automation_event_base_frame(frame: i32) = "SetAutomationEventBaseFrame";
extern fn start_automation_event_recording() = "StartAutomationEventRecording";
extern fn stop_automation_event_recording() = "StopAutomationEventRecording";
extern fn play_automation_event(event: AutomationEvent) = "PlayAutomationEvent";

// KEYBOARD
extern fn is_key_pressed(key: i32) -> bool = "IsKeyPressed";
extern fn is_key_pressed_repeat(key: i32) -> bool = "IsKeyPressedRepeat";
extern fn is_key_down(key: i32) -> bool = "IsKeyDown";
extern fn is_key_released(key: i32) -> bool = "IsKeyReleased";
extern fn is_key_up(key: i32) -> bool = "IsKeyUp";
extern fn get_key_pressed() -> i32 = "GetKeyPressed";
extern fn get_char_pressed() -> i32 = "GetCharPressed";
extern fn get_key_name(key: i32) -> u64 = "GetKeyName";
extern fn set_exit_key(key: i32) = "SetExitKey";

// GAMEPAD
extern fn is_gamepad_available(gamepad: i32) -> bool = "IsGamepadAvailable";
extern fn get_gamepad_name(gamepad: i32) -> u64 = "GetGamepadName";
extern fn is_gamepad_button_pressed(gamepad: i32, button: i32) -> bool = "IsGamepadButtonPressed";
extern fn is_gamepad_button_down(gamepad: i32, button: i32) -> bool = "IsGamepadButtonDown";
extern fn is_gamepad_button_released(gamepad: i32, button: i32) -> bool = "IsGamepadButtonReleased";
extern fn is_gamepad_button_up(gamepad: i32, button: i32) -> bool = "IsGamepadButtonUp";
extern fn get_gamepad_button_pressed() -> i32 = "GetGamepadButtonPressed";
extern fn get_gamepad_axis_count(gamepad: i32) -> i32 = "GetGamepadAxisCount";
extern fn get_gamepad_axis_movement(gamepad: i32, axis: i32) -> f32 = "GetGamepadAxisMovement";
extern fn set_gamepad_mappings(mappings: const u8&) -> i32 = "SetGamepadMappings";
extern fn set_gamepad_vibration(gamepad: i32, left_motor: f32, right_motor: f32, duration: f32) = "SetGamepadVibration";

// MOUSE
extern fn is_mouse_button_pressed(button: i32) -> bool = "IsMouseButtonPressed";
extern fn is_mouse_button_down(button: i32) -> bool = "IsMouseButtonDown";
extern fn is_mouse_button_released(button: i32) -> bool = "IsMouseButtonReleased";
extern fn is_mouse_button_up(button: i32) -> bool = "IsMouseButtonUp";
extern fn get_mouse_x() -> i32 = "GetMouseX";
extern fn get_mouse_y() -> i32 = "GetMouseY";
extern fn get_mouse_position() -> Vector2 = "GetMousePosition";
extern fn get_mouse_delta() -> Vector2 = "GetMouseDelta";
extern fn set_mouse_position(x: i32, y: i32) = "SetMousePosition";
extern fn set_mouse_offset(offset_x: i32, offset_y: i32) = "SetMouseOffset";
extern fn set_mouse_scale(scale_x: f32, scale_y: f32) = "SetMouseScale";
extern fn get_mouse_wheel_move() -> f32 = "GetMouseWheelMove";
extern fn get_mouse_wheel_move_v() -> Vector2 = "GetMouseWheelMoveV";
extern fn set_mouse_cursor(cursor: i32) = "SetMouseCursor";

// TOUCH
extern fn get_touch_x() -> i32 = "GetTouchX";
extern fn get_touch_y() -> i32 = "GetTouchY";
extern fn get_touch_position(index: i32) -> Vector2 = "GetTouchPosition";
extern fn get_touch_point_id(index: i32) -> i32 = "GetTouchPointId";
extern fn get_touch_point_count() -> i32 = "GetTouchPointCount";

// GESTURES
extern fn set_gestures_enabled(flags: u32) = "SetGesturesEnabled";
extern fn is_gesture_detected(gesture: u32) -> bool = "IsGestureDetected";
extern fn get_gesture_detected() -> i32 = "GetGestureDetected";
extern fn get_gesture_hold_duration() -> f32 = "GetGestureHoldDuration";
extern fn get_gesture_drag_vector() -> Vector2 = "GetGestureDragVector";
extern fn get_gesture_drag_angle() -> f32 = "GetGestureDragAngle";
extern fn get_gesture_pinch_vector() -> Vector2 = "GetGesturePinchVector";
extern fn get_gesture_pinch_angle() -> f32 = "GetGesturePinchAngle";

// CAMERA
extern fn update_camera(camera: Camera3D&, mode: i32) = "UpdateCamera";
extern fn update_camera_pro(camera: Camera3D&, movement: Vector3, rotation: Vector3, zoom: f32) = "UpdateCameraPro";
