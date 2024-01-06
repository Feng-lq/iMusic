
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imusic/pages/tabs/personalCenterPage.dart';
import 'package:imusic/r.dart';

class personalCenter extends StatefulWidget {
  const personalCenter({super.key});

  @override
  State<personalCenter> createState() => _personalCenterState();
}

class _personalCenterState extends State<personalCenter> {
  @override
  Widget build(BuildContext context) {
    var name = "Shkn";
    var id = 123555666;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            //padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 0.1),
                  )
                ]),
          ),
          Positioned(
            left: 50,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(R.assetsImgP3), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 1)),
            ),
          ),
          Positioned(
              top: 25,
              left: 125,
              child: Container(
                child: Text("用户" + name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              )),
          Positioned(
              top: 55,
              left: 125,
              child: Container(
                child: Text("id:${id}",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    )),
              )),
          Positioned(
              top: 15,
              right: 95,
              child: Container(
                child: const Text("个人中心",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
              )),
          Positioned(
              top: 10,
              right: 55,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const PersonalCenterPage()));
                  }, icon: const Icon(Icons.chevron_right_sharp))),
          Positioned(
              top: 40,
              right: 90,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(115, 188, 240, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "歌曲上传",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
