import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';


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
