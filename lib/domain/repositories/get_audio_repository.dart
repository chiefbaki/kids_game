import 'dart:io';
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
  Future<void> getAudio() async {
    final Response<List<int>> response = await dio.post(
        "http://tts.ulut.kg/api/tts",
        data: {"text": "", "speaker_id": 2});
    debugPrint(response.data.toString());
    final filename = _generateFileName("");
    final audioBytes = response.data!;
    _saveAudioFile(audioBytes, filename);
    // final assetsAudioPlayer = AssetsAudioPlayer();

    // assetsAudioPlayer.open(
    //   Audio("assets/audio/audio.mp3"),
    // );
  }

  Future<void> _saveAudioFile(List<int> audioBytes, String filename) async {
    // final String projectDirectory = Directory.current.path;
    String filePath =
        'Users/islamkurbanov/flutter/kids_game/assets/audio/$filename.mp3';
    final File file = File(filePath);
    // final directory = await getApplicationDocumentsDirectory();
    // final file = File('${directory.path}/audio.mp3');
    await file.writeAsBytes(audioBytes);
    // return file;
  }
   String _generateFileName(String text) {
    
    final hash = text.hashCode;
    return 'audio_$hash';
  }

}