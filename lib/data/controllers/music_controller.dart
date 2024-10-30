import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicController extends ValueNotifier<bool> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  MusicController() : super(false); // Initially, music is not playing

  Future<void> loadAndCacheMusic() async {
    // Load and cache the music to avoid delay during the initial playback
    await _audioPlayer.setSource(AssetSource('music/casino-music.mp3'));
    await _audioPlayer
        .setReleaseMode(ReleaseMode.loop); // Keep looping the music
    await _audioPlayer
        .pause(); // Preload and pause to avoid auto-play with delay
  }

  // Play music
  Future<void> playMusic() async {
    if (!value) {
      await _audioPlayer.resume(); // Resume preloaded music
      value = true; // Update playing state
    }
  }

  // Pause music
  Future<void> pauseMusic() async {
    if (value) {
      await _audioPlayer.pause();
      value = false; // Update playing state
    }
  }

  // Toggle music
  Future<void> toggleMusic() async {
    if (value) {
      await pauseMusic();
    } else {
      await playMusic();
    }
  }

  // Dispose of the audio player when done
  @override
  Future<void> dispose() async {
    await _audioPlayer.dispose();
    super.dispose();
  }
}
