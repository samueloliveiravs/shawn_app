import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioMediaPlayer extends StatefulWidget {
  final String source;
  const AudioMediaPlayer({super.key, required this.source});

  @override
  State<AudioMediaPlayer> createState() => _AudioMediaPlayerState();
}

class _AudioMediaPlayerState extends State<AudioMediaPlayer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() => tempoTotal = d);
    });

    audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() => tempoAtual = p);
    });
  }

  final audioPlayer = AudioPlayer();

  Duration tempoTotal = Duration.zero;
  Duration tempoAtual = Duration.zero;

  bool isDragging = false;
  double dragValue = 0;

  void _playAudio() async {
    await audioPlayer.play(AssetSource(widget.source));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          min: 0,
          max: tempoTotal.inSeconds.toDouble() > 0
              ? tempoTotal.inSeconds.toDouble()
              : 1,

          value: isDragging
              ? dragValue
              : tempoAtual.inSeconds.toDouble().clamp(
                  0,
                  tempoTotal.inSeconds.toDouble() > 0
                      ? tempoTotal.inSeconds.toDouble()
                      : 1,
                ),
          onChangeStart: (value) {
            isDragging = true;
          },

          onChanged: (value) {
            setState(() {
              dragValue = value;
            });
          },

          onChangeEnd: (value) async {
            isDragging = false;
            await audioPlayer.seek(Duration(seconds: value.toInt()));
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: audioPlayer.pause,
              child: Icon(Icons.pause),
            ),
            ElevatedButton(
              onPressed: _playAudio,
              child: Icon(Icons.play_arrow),
            ),
            ElevatedButton(
              onPressed: () async {
                audioPlayer.stop();
                setState(() {
                  tempoAtual = Duration.zero;
                  dragValue = 0;
                });
                await audioPlayer.seek(Duration.zero);
              },
              child: Icon(Icons.stop),
            ),
          ],
        ),
      ],
    );
  }
}
