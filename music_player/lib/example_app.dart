import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  final audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Slider(
          max: duration.inSeconds.toDouble(),
          value: position.inSeconds.toDouble(),
          onChanged: (value) async {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$position"),
            Text("$duration"),
          ],
        ),
        CircleAvatar(
          radius: 35,
          child: IconButton(
            icon: Icon(
              _isPlaying ? Icons.pause : Icons.play_arrow,
            ),
            onPressed: () async {
              if (_isPlaying) {
                await audioPlayer.pause();
              } else {
                await audioPlayer.play();
              }
            },
          ),
        )
      ]),
    );
  }
}
