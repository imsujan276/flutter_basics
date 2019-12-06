import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Your title'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: screenWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  backgroundImage('assets/image_1.jpg'),
                  backgroundImage('assets/image_1.jpg')
                ],
              ),
            ),
            Container(
              height: 20,
            ),

            ///for video player
            Video(),
            Container(
              height: 200,
              width: screenWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  backgroundImage('assets/image_1.jpg'),
                  backgroundImage('assets/image_1.jpg')
                ],
              ),
            ),
          ],
        ));
  }

  ///returns image
  Widget backgroundImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

///for video
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  Widget _loading = CircularProgressIndicator();

  ///controller to control video,
  ///i.e. to pause or to play, we
  ///use this video controller
  var _videoController = VideoPlayerController.asset('assets/sample_video.mp4');

  ///to check whether video has been started or paused
  bool _paused = true;

  ///for play and pause icon
  Icon _playPauseIcon = Icon(
    Icons.play_arrow,
    size: 40,
  );

  ///this function executes only once
  /// when this screens shows up
  @override
  void initState() {
    _videoController.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: <Widget>[
          ///for video

          VideoPlayer(_videoController),

          ///for play pause button over video
          Center(
              child: IconButton(
            icon: _playPauseIcon,
            onPressed: () {
              if (_paused == false) {
                setState(() {
                  _paused = true;
                  _playPauseIcon = Icon(
                    Icons.play_arrow,
                    size: 40,
                  );
                  _videoController.pause();
                });
              } else if (_paused == true) {
                setState(() {
                  _paused = false;
                  _playPauseIcon = Icon(
                    Icons.pause,
                    size: 40,
                  );
                  _videoController.play();
                });
              }
            },
          ))
        ],
      ),
    );
  }
}
