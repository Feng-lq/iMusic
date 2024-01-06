//import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:imusic/audio/audio_file.dart';
import 'package:imusic/r.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  late AudioPlayer advancedPlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final double scrennHeight = MediaQuery.of(context).size.height;
    final double scrennWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: null,
      //backgroundColor: Colors.grey, //改变总的背景颜色
      body: Container(
        decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(R.assetsImgAudioBackground),
                    fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.center,
        children: [
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     right: 0,
          //     height: scrennHeight / 5,
          //     child: Container(
          //       color: Colors.blue,
          //     )),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              //将scaffold背景改为透明
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: scrennWidth * 0.05,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: scrennWidth * 0.05,
                    ),
                    onPressed: () {}),
              ],
              //backgroundColor: Colors.blue,
              elevation: 0.0, //清除顶部appBar的横线
            ),
          ),
          Positioned(
            top: scrennHeight * 0.50,
            left: 0,
            right: 0,
            height: scrennHeight * 0.5,
            child: Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: scrennHeight * 0.01,
                    ),
                    const Text("稻香",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Avenir" //??
                            )),
                    SizedBox(
                      height: scrennHeight * 0.01,
                    ),
                    const Text(
                      "周杰伦",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: scrennHeight * 0.01,
                    ),
                    AudioFile(advancedPlayer: advancedPlayer),
                  ],
                )),
          ),
          Positioned(
              top: scrennHeight * 0.10,
              left: (scrennWidth - 150) / 4,
              right: (scrennWidth - 150) / 4,
              height: scrennHeight * 0.30,
              child: Container(
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.circle,
                        //border: Border.all(color: Colors.white, width: 5),
                        image: DecorationImage(
                            image: AssetImage(R.assetsImgP2),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.all(75),
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
      )
    );
  }
}
