import 'package:flutter/material.dart';
import '../r.dart';

class Recommend extends StatelessWidget {
  const Recommend({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 120,
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
                width: 120,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Column(
                  children: [
                    Image.asset(
                      R.assetsImgP2,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      "歌单01",
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
