import 'dart:io';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AudioRepository {
  final Dio dio = Dio(
    BaseOptions(
      responseType: ResponseType.bytes,
      contentType: "application/json",
      headers: {
        "Authorization":
            "Bearer 8zH0qEKi4Cj2DxmLQ37ax1ZJaclAqQayYFg6sUm4SPlLjKmWgc7G4ijeEhdIxlGJ",
        "Accept": "application/json",
      },
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );
  Future<void> getAudio({required String text}) async {
    final Response<List<int>> response = await dio.post(
        "http://tts.ulut.kg/api/tts",
        data: {"text": text, "speaker_id": 2});
    debugPrint(response.data.toString());
    final audioBytes = response.data!;
    _saveAudioFile(audioBytes);
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/audio/audio.mp3"),
    );
  }

  Future<void> _saveAudioFile(List<int> audioBytes) async {
    // final String projectDirectory = Directory.current.path;
    const String filePath =
        'Users/islamkurbanov/flutter/kids_game/assets/audio/audio.mp3';
    final File file = File(filePath);
    // final directory = await getApplicationDocumentsDirectory();
    // final file = File('${directory.path}/audio.mp3');
    await file.writeAsBytes(audioBytes);
    // return file;
  }
}