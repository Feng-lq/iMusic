import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 1000,
      margin: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 237, 237, 237),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        /*boxShadow: BoxShadow(
                  color: Colors.black
                ),*/
      ),
      alignment: Alignment.centerLeft,
      child: Container(
        child:
            // Icon(Icons.search),
            TextFormField(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            prefixIcon: Icon(Icons.search),
            hintText: "搜索你寻找的音乐:",
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 122, 122, 122)),
            //为什么没有到上面！！！！！！！
          ),
        ),
        // Text(
        //   "搜索你寻找的音乐",
        //   //textAlign: TextAlign.left,
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       color: Color.fromARGB(255, 122, 122, 122)),
        // )
      ),
    );
  }
}
