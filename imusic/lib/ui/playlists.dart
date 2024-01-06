import 'package:flutter/material.dart';
import '../r.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 200,
          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: 50,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Image.asset(R.assetsImgP3,fit: BoxFit.cover,),
                  title: const Text("歌单：Comic and Animatation",
                  style: TextStyle(fontSize: 12),),
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Image.asset(R.assetsImgP3,fit: BoxFit.cover,),
                  title: const Text("新建歌单",style: TextStyle(fontSize: 12),),
                ),
              ),
              Container(
                height: 50,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Image.asset(R.assetsImgP3,fit: BoxFit.cover,),
                  title: const Text("导入外部歌单",style: TextStyle(fontSize: 12),),
                ),
              ),
            ],
          ),
        );
  }
}