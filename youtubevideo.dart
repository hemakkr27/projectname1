import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
 
void main() => runApp(MyAppcls());
 
class MyAppcls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
 
// ignore: must_be_immutable
class App extends StatelessWidget {
  static String videoID = 'dFKhWe2bBkM';
 
  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
 
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Embed YouTube Video in Flutter'),
        ),
        body: Container(
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
            showVideoProgressIndicator: true,
          ),
        ));
  }
}