
import 'package:flutter/material.dart';
import 'package:imusic/ui/bottomPlay.dart';
import 'package:imusic/ui/mine.dart';
import 'package:imusic/ui/personalCenter.dart';
import 'package:imusic/ui/playlists.dart';
import 'package:imusic/ui/recentlyPlayed.dart';
import 'package:imusic/ui/search.dart';
import 'package:imusic/ui/userIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        appBar: null,
        body: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "我的",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                  const Search(),
                  //const UserIn(),
                  Container(
                    height: 80,
                    child: const personalCenter(),
                  ),
                  
                  const Mine(),
                  Container(
                    height: 50,
                    width: 1000,
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: const Text(
                      "最近播放",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const RecentlyPlayed(),
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: const Text(
                      "我的歌单",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Playlists(),
                ],
              ),
            ),
            const BottomPlay()
          ],
        ));
  }
}
