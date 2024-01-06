import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imusic/r.dart';

import 'showBottom.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancedPlayer;
  const AudioFile({super.key, required this.advancedPlayer});

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = const Duration();
  Duration _position = const Duration();
  final String path =
      "https://song-buck.oss-cn-hangzhou.aliyuncs.com/music/Call%20of%20Silence.mp3";

  bool isPlaying = false;
  bool isPaused = false;
  bool isLoop = false;
  bool isRepeat = false;
  Color color = Colors.black;
  final List<IconData> _icons = [
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.advancedPlayer.setSourceUrl(path);
    widget.advancedPlayer.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });
    widget.advancedPlayer.onPositionChanged.listen((p) {
      setState(() {
        _position = p;
      });
    });

    widget.advancedPlayer.setSourceUrl(path);
    widget.advancedPlayer.onPlayerComplete.listen((event) {
      setState(() {
        _position = const Duration(seconds: 0);
        if (isRepeat == true) {
          isPlaying = true;
        } else {
          isPlaying = false;
          isRepeat = false;
        }
      });
    });
  }

  Widget btnStart() {
    return IconButton(
        padding: const EdgeInsets.only(bottom: 10),
        onPressed: () {
          if (isPlaying == false) {
            widget.advancedPlayer.play(UrlSource(path));
            setState(() {
              isPlaying = true;
            });
          } else if (isPlaying == true) {
            widget.advancedPlayer.pause();
            setState(() {
              isPlaying = false;
            });
          }
        },
        icon: isPlaying == false
            ? Icon(
                _icons[0],
                size: 50,
                color: Colors.blue,
              )
            : Icon(_icons[1], size: 50, color: Colors.blue));
  }

  Widget bstFast() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.skip_next),
      iconSize: 30,
      color: Colors.black,
    );
  }

  Widget bstSlow() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.skip_previous),
      iconSize: 30,
      color: Colors.black,
    );
  }

  Widget bstLoop() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.loop),
      iconSize: 30,
      color: Colors.black,
    );
  }

  Widget bstRepeat() {
    return IconButton(
      onPressed: () {
        if (isRepeat == false) {
          widget.advancedPlayer.setReleaseMode(ReleaseMode.loop);
          setState(() {
            isRepeat = true;
            color = Colors.blue;
          });
        } else if (isRepeat == true) {
          widget.advancedPlayer.setReleaseMode(ReleaseMode.loop);
          setState(() {
            isRepeat = false;
            color = Colors.black;
          });
        }
      },
      icon: const Icon(Icons.repeat),
      iconSize: 30,
      color: color,
    );
  }

  Widget bstFavorite() {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.favorite));
  }

  Widget bstComment() {
    return IconButton(
        onPressed: () {}, icon: ImageIcon(AssetImage(R.assetsImgComment)));
  }

  Widget bstStar() {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.star));
  }

  Widget bstDownload() {
    return IconButton(
        onPressed: () {}, icon: ImageIcon(AssetImage(R.assetsImgPrimary)));
  }

  Widget bstMusic() {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context, 
            builder: (BuildContext context) => const showBottom());
          // Get.bottomSheet(
          //       Container(
          //         height: 800,
          //         color: Colors.white,
          //         child: Container(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               // Container(
          //               //   width: double.infinity,
          //               //   child: Row(
          //               //     children: [
          //               //       SizedBox(
          //               //         width: 50,
          //               //       ),
          //               //       Text('稻香',style: TextStyle(fontWeight: FontWeight.bold),),
          //               //       Text('-周杰伦',style: TextStyle(),)
          //               //     ],
          //               //   ),
          //               // ),
          //               const Text(
          //                 'This is a bottom sheet',
          //                 style: TextStyle(fontSize: 18),
          //               ),
          //               const SizedBox(height: 20),
          //               ElevatedButton(
          //                 onPressed: () {
          //                   Get.back(); // 关闭 bottomSheet
          //                 },
          //                 child: const Text('Close'),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ));
        }, icon: ImageIcon(AssetImage(R.assetsImgMusic)));
  }

  Widget slider() {
    return Slider(
        activeColor: const Color.fromRGBO(100, 235, 211, 1.0),
        inactiveColor: Colors.grey,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            changeToSecond(value.toInt());
            value = value;
          });
        });
  }

  void changeToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    widget.advancedPlayer.seek(newDuration);
  }

  Widget loadAssert() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bstLoop(),
          bstSlow(),
          btnStart(),
          bstFast(),
          bstRepeat(),
        ],
      ),
    );
  }

  Widget tools() {
    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bstFavorite(),
            bstComment(),
            bstStar(),
            bstDownload(),
            bstMusic(),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          slider(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _position.toString().split(".")[0],
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  _duration.toString().split(".")[0],
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          loadAssert(),
          const SizedBox(
            height: 10,
          ),
          tools(),
        ],
      ),
    );
  }
}
