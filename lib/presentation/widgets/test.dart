import 'dart:io';
import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: TextButton(
          child: Text("BSkfhe"),
          onPressed: () async {
            final assetsAudioPlayer = AssetsAudioPlayer();

            try {
              await assetsAudioPlayer.open(
                Audio.network("https://www.epidemicsound.com/track/LlU8cD4Ad3/"),
              );
            } catch (t) {
              //mp3 unreachable
            }
          },
        ),
      ),
    );
  }
}
