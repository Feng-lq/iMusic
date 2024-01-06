import 'package:flutter/material.dart';
import 'package:imusic/pages/tabs/audioPage.dart';

import '../r.dart';
import '../audio/showBottom.dart';

class BottomPlay extends StatefulWidget {
  const BottomPlay({super.key});

  @override
  State<BottomPlay> createState() => _BottomPlayState();
}

class _BottomPlayState extends State<BottomPlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: 80,
          width: 80,
          child: Container(
            //margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(R.assetsImgRecord), fit: BoxFit.cover)),
          ),
        ),
        Container(
            height: 80,
            width: 1000,
            child: Container(
              height: 60,
              width: 230,
              margin: const EdgeInsets.fromLTRB(10, 10, 15, 15),
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(70, 70, 70, 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              // Image.asset(
              //                   R.assetsImgP1,
              //                   fit: BoxFit.cover,
              //                 ),
              child: Stack(
                children: [
                  const Positioned(
                    //width: double.infinity,
                    child: Center(
                        child: Text(
                      "iMusic,make life more mucial",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Positioned(
                    right: 60,
                    //margin: const EdgeInsets.all(1),
                    child:
                        //btnStart(),
                        IconButton(
                      icon: const Icon(
                        Icons.play_circle_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    right: 10,
                    //margin: const EdgeInsets.all(1),
                    child: IconButton(
                      icon: const Icon(
                        Icons.queue_music_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      //style: const ButtonStyle(elevation :MaterialStatePropertyAll(1)),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                                const showBottom());
                      },
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: TextButton(
                        // style: const ButtonStyle(
                        //   //
                        // ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const AudioPage()));
                        },
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Color.fromRGBO(70, 70, 70, 0.4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
