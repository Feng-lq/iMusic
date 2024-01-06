import 'package:flutter/material.dart';
import 'package:imusic/ui/search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //         //将scaffold背景改为透明
      //         leading: IconButton(
      //             icon: Icon(
      //               Icons.arrow_back,
      //             ),
      //             onPressed: () {
      //               Navigator.of(context).pop();
      //             }),
      //         actions: [
      //           IconButton(
      //               icon: Icon(
      //                 Icons.search,
      //                 size: scrennWidth * 0.05,
      //               ),
      //               onPressed: () {}),
      //         ],
      //         //backgroundColor: Colors.blue,
      //         elevation: 0.0, //清除顶部appBar的横线
      // ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_sharp),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Container(
                  height: 50,
                  width: 220,
                  child: const Search(),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '搜索',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: const Row(
              children: [
                Text('搜索记录'),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(3)),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: const Text(
                  "稻香",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Nevwe Gonna GiveYou Up",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "稻香",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "稻香",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "稻香", 
                  style: TextStyle(color: Colors.black)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
