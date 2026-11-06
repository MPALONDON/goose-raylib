// AUDIO DEVICE
import .types;
extern fn init_audio_device() = "InitAudioDevice";
extern fn close_audio_device() = "CloseAudioDevice";
extern fn is_audio_device_ready() -> bool = "IsAudioDeviceReady";
extern fn set_master_volume(volume: f32) = "SetMasterVolume";
extern fn get_master_volume() -> f32 = "GetMasterVolume";

// WAVES AND SOUNDS
extern fn load_wave(file_name: const u8&) -> Wave = "LoadWave";
extern fn load_wave_from_memory(file_type: const u8&, file_data: const u8&, data_size: i32) -> Wave = "LoadWaveFromMemory";
extern fn is_wave_valid(wave: Wave) -> bool = "IsWaveValid";
extern fn load_sound(file_name: const u8&) -> Sound = "LoadSound";
extern fn load_sound_from_wave(wave: Wave) -> Sound = "LoadSoundFromWave";
extern fn load_sound_alias(source: Sound) -> Sound = "LoadSoundAlias";
extern fn is_sound_valid(sound: Sound) -> bool = "IsSoundValid";
extern fn update_sound(sound: Sound, data: const u8&, frame_count: i32) = "UpdateSound";
extern fn unload_wave(wave: Wave) = "UnloadWave";
extern fn unload_sound(sound: Sound) = "UnloadSound";
extern fn unload_sound_alias(alias: Sound) = "UnloadSoundAlias";
extern fn export_wave(wave: Wave, file_name: const u8&) -> bool = "ExportWave";
extern fn export_wave_as_code(wave: Wave, file_name: const u8&) -> bool = "ExportWaveAsCode";

// SOUND PLAYBACK
extern fn play_sound(sound: Sound) = "PlaySound";
extern fn stop_sound(sound: Sound) = "StopSound";
extern fn pause_sound(sound: Sound) = "PauseSound";
extern fn resume_sound(sound: Sound) = "ResumeSound";
extern fn is_sound_playing(sound: Sound) -> bool = "IsSoundPlaying";
extern fn set_sound_volume(sound: Sound, volume: f32) = "SetSoundVolume";
extern fn set_sound_pitch(sound: Sound, pitch: f32) = "SetSoundPitch";
extern fn set_sound_pan(sound: Sound, pan: f32) = "SetSoundPan";

// WAVE MANIPULATION
extern fn wave_copy(wave: Wave) -> Wave = "WaveCopy";
extern fn wave_crop(wave: Wave&, init_frame: i32, final_frame: i32) = "WaveCrop";
extern fn wave_format(wave: Wave&, sample_rate: i32, sample_size: i32, channels: i32) = "WaveFormat";
extern fn load_wave_samples(wave: Wave) -> u64 = "LoadWaveSamples";
extern fn unload_wave_samples(samples: u64) = "UnloadWaveSamples";

// MUSIC STREAMS
extern fn load_music_stream(file_name: const u8&) -> Music = "LoadMusicStream";
extern fn load_music_stream_from_memory(file_type: const u8&, data: const u8&, data_size: i32) -> Music = "LoadMusicStreamFromMemory";
extern fn is_music_valid(music: Music) -> bool = "IsMusicValid";
extern fn unload_music_stream(music: Music) = "UnloadMusicStream";
extern fn play_music_stream(music: Music) = "PlayMusicStream";
extern fn is_music_stream_playing(music: Music) -> bool = "IsMusicStreamPlaying";
extern fn update_music_stream(music: Music) = "UpdateMusicStream";
extern fn stop_music_stream(music: Music) = "StopMusicStream";
extern fn pause_music_stream(music: Music) = "PauseMusicStream";
extern fn resume_music_stream(music: Music) = "ResumeMusicStream";
extern fn seek_music_stream(music: Music, position: f32) = "SeekMusicStream";
extern fn set_music_volume(music: Music, volume: f32) = "SetMusicVolume";
extern fn set_music_pitch(music: Music, pitch: f32) = "SetMusicPitch";
extern fn set_music_pan(music: Music, pan: f32) = "SetMusicPan";
extern fn get_music_time_length(music: Music) -> f32 = "GetMusicTimeLength";
extern fn get_music_time_played(music: Music) -> f32 = "GetMusicTimePlayed";

// AUDIO STREAMS
extern fn load_audio_stream(sample_rate: u32, sample_size: u32, channels: u32) -> AudioStream = "LoadAudioStream";
extern fn is_audio_stream_valid(stream: AudioStream) -> bool = "IsAudioStreamValid";
extern fn unload_audio_stream(stream: AudioStream) = "UnloadAudioStream";
extern fn update_audio_stream(stream: AudioStream, data: const u8&, frame_count: i32) = "UpdateAudioStream";
extern fn is_audio_stream_processed(stream: AudioStream) -> bool = "IsAudioStreamProcessed";
extern fn play_audio_stream(stream: AudioStream) = "PlayAudioStream";
extern fn pause_audio_stream(stream: AudioStream) = "PauseAudioStream";
extern fn resume_audio_stream(stream: AudioStream) = "ResumeAudioStream";
extern fn is_audio_stream_playing(stream: AudioStream) -> bool = "IsAudioStreamPlaying";
extern fn stop_audio_stream(stream: AudioStream) = "StopAudioStream";
extern fn set_audio_stream_volume(stream: AudioStream, volume: f32) = "SetAudioStreamVolume";
extern fn set_audio_stream_pitch(stream: AudioStream, pitch: f32) = "SetAudioStreamPitch";
extern fn set_audio_stream_pan(stream: AudioStream, pan: f32) = "SetAudioStreamPan";
extern fn set_audio_stream_buffer_size_default(size: i32) = "SetAudioStreamBufferSizeDefault";

// TODO: Callback function pointers require a safe C bridge.
// SetAudioStreamCallback
// AttachAudioStreamProcessor
// DetachAudioStreamProcessor
// AttachAudioMixedProcessor
// DetachAudioMixedProcessor
