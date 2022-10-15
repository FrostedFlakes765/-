import 'package:flutter/material.dart';
import 'package:cred/video_items.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Video Library'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          // VideoItems(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'assets/video_6.mp4',
          //   ),
          //   looping: true,
          //   autoplay: false,
          // ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
            looping: false,
            autoplay: true,
            aspectRatio: 9 / 16,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
            looping: false,
            autoplay: true,
            aspectRatio: 16 / 9,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
            looping: false,
            autoplay: true,
            aspectRatio: 9 / 16,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
            looping: false,
            autoplay: true,
            aspectRatio: 9 / 16,
          ),
          // VideoItems(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'assets/video_5.mp4',
          //   ),
          //   looping: false,
          //   autoplay: false,
          // ),
          // VideoItems(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'assets/video_3.mp4',
          //   ),
          //   looping: false,
          //   autoplay: false,
          // ),
          // VideoItems(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'assets/video_2.mp4',
          //   ),
          //   looping: false,
          //   autoplay: false,
          // ),
          // // VideoItems(
          // //   videoPlayerController: VideoPlayerController.network(
          // //       "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"),
          // //   looping: true,
          // //   autoplay: false,
          // // ),
          // VideoItems(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'assets/video_1.mp4',
          //   ),
          //   looping: false,
          //   autoplay: false,
          // ),
        ],
      ),
    );
  }
}
