import 'package:flutter/material.dart';
import '../r.dart';

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          padding:const EdgeInsets.all(1),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 100,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP1,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "我的点赞",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP1,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "我的收藏",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP1,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "我的下载",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP1,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "我的歌单",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP1,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "我的XX",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
  }
}