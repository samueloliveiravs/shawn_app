import 'package:flutter/material.dart';
import 'package:shawn_app/shared/widgets/audio_media_player.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio e Video"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            AudioMediaPlayer(source: 'sounds/audio1.mp3'),
            AudioMediaPlayer(source: 'sounds/audio2.mp3'),
          ],
        ),
      ),
    );
  }
}
