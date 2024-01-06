import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //去掉debug图标
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：当组件初始化的时候就会触发
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            //左侧按钮图标
            onPressed: () {
              print("zuoceanniutubiao");
            },
          ),
          backgroundColor: Colors.amber,
          //导航背景颜色
          actions: [
            //右侧图标
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print("sousuo");
              },
            ),

             IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print("gengduo");
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2,
            indicatorPadding: const EdgeInsets.all(5),
            indicatorSize: TabBarIndicatorSize.tab,
            //默认为.tab， 有时组件少时可能会改为.lable
            labelColor: Colors.black,//选中的颜色
            unselectedLabelColor: Colors.white,//未选中的颜色
            labelStyle: const TextStyle(
              fontSize: 14
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12
            ),
            indicator: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
            ),
            controller: _tabController,
            tabs: const [
            Tab(
              child: Text("overview"),
            ),
            Tab(
              child: Text("remen"),
            ),
            Tab(
              child: Text("songs"),
            )
          ]),
          title: const Text("iMusic")),
      body: TabBarView(
        controller: _tabController,
        children: [//与tabbar对应
        ListView(
          children: const [
            ListTile(
              title: Text("111"),
            ),
          ],
        ),
                ListView(
          children: const [
            ListTile(
              title: Text("222"),
            ),
          ],
        ),
                ListView(
          children: const [
            ListTile(
              title: Text("333"),
            ),
          ],
        )
      ]),
    );
  }
}
