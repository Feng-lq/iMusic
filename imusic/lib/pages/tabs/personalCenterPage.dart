import 'package:flutter/material.dart';
import 'package:imusic/pages/tabs/settingPage.dart';
import 'package:imusic/r.dart';
import 'package:imusic/ui/mine.dart';
import 'package:imusic/ui/playlists.dart';

class PersonalCenterPage extends StatelessWidget {
  const PersonalCenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Shkn";
    var id = 123555666;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Settings()));
            },
          ),
        ],
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(R.assetsImgP3),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(80),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Text(
                "用户 $name",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 5),
              Text(
                "ID: $id",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 20),
              const Text(
                "我的音乐",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              //const SizedBox(height: 20),
              Container(
                height: 100,
                child: const Mine(),
              ),
              const SizedBox(height: 20),
              const Text(
                "我的歌单",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                child: const Playlists(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
