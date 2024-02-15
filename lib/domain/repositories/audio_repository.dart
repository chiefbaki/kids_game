import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

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
  Future<File> getAudio() async {
    final Response<List<int>> response = await dio.post("http://tts.ulut.kg/api/tts",
        data: {"text": "Анас Мурат Жантай Ислам", "speaker_id": 2});
    print(response.data);
    final audioBytes = response.data!;
    return _saveAudioFile(audioBytes);
  }

    Future<File> _saveAudioFile(List<int> audioBytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/audio.mp3');
    await file.writeAsBytes(audioBytes);
    return file;
  }

  // Future<void> saveAudioFile(List<int> audioBytes) async {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final file = File('${directory.path}/audio.mp3');
  //   await file.writeAsBytes(audioBytes);
  // }
}