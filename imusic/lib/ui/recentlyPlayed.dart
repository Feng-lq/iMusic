import 'package:flutter/material.dart';
import '../r.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 116,
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 90,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP2,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "已播歌曲",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 90,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP2,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "歌单001",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 90,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP2,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "歌单002",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 90,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP2,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "歌单003",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                width: 90,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP2,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "XX",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
