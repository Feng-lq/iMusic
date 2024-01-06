import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/tabs/home.dart';
import 'pages/tabs/userPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //去掉debug图标
      title: 'Flutter Demo',
      theme: null,
      home: Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
   int _currentIndex = 0;
  final List<Widget> _pages = const [
    UserPage(),
    MyHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: const Color.fromRGBO(198, 225, 241, 1.0), ///选中的颜色
          //iconSize: 35,          //菜单底部大小
          currentIndex: _currentIndex, //选中第几个菜单
          type: BottomNavigationBarType.fixed, //底部菜单>=4时一定要配置
          onTap: (index) {
            //点击菜单出发的方法
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "我的"),
          ]),
    );
  }
}