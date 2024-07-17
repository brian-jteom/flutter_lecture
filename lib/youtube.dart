import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static String youtubeId = 't5Vj0jeYeEE';
  
  final YoutubePlayerController _con = YoutubePlayerController(
    initialVideoId: youtubeId,
    flags: const YoutubePlayerFlags(
        autoPlay: false
    )
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
        body: Center(
          child: YoutubePlayer(
            controller: _con,
            showVideoProgressIndicator: true,
            onReady: () {
              print('Player is ready.');
            },
          ),
        )
    );
  }
}
