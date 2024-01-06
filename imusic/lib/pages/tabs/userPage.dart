import 'package:flutter/material.dart';
import 'package:imusic/pages/tabs/searchPage.dart';
import 'package:imusic/ui/bottomPlay.dart';
import 'package:imusic/ui/recommend.dart';

import '../../ui/playlists.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：当组件初始化的时候就会触发
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(child: Container(
              height: 700,
              width: double.infinity,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                    //titleSpacing: null,
                    //toolbarOpacity: 0.5,
                    backgroundColor: Colors.white,
                    //导航背景颜色
                    primary: true,
                    actions: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SearchPage()));
                        },
                        icon: Icon(Icons.search),
                        color: Colors.black,
                        iconSize: 30,
                      )
                    ],
                    bottom: TabBar(
                        isScrollable: true,
                        indicatorColor: Color.fromRGBO(166, 205, 233, 1.0),
                        indicatorWeight: 2,
                        indicatorPadding: const EdgeInsets.all(5),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.black, //选中的颜色
                        unselectedLabelColor: Colors.black45, //未选中的颜色
                        labelStyle: const TextStyle(fontSize: 14),
                        unselectedLabelStyle: const TextStyle(fontSize: 12),
                        // indicator: const Color.fromRGBO(166, 205, 233, 1.0),,
                        // indicator: BoxDecoration(
                        //     color: Colors.grey,
                        //     borderRadius: BorderRadius.circular(10)),
                        controller: _tabController,
                        tabs: const [
                          Tab(
                            child: Text(
                              "overview",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text("songs",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          )
                        ]),
                    title: const Text(
                      "Discover",
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    )),
                body: TabBarView(controller: _tabController, children: [
                  //与tabbar对应
                  Scaffold(
                    backgroundColor: Colors.white,
                    body: ListView(
                      children: [
                        Container(
                          height: 50,
                          width: 1000,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: const Text(
                            "Recommend",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Recommend(),
                        Container(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: const Text(
                            "Top Songs",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Playlists(),
                      ],
                    ),
                  ),

                  Scaffold(
                    backgroundColor: Colors.white,
                    body: ListView(
                      children: const [
                        ListTile(
                          title: Text("333"),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),),
            const BottomPlay(),
          ],
        ));
  }
}
