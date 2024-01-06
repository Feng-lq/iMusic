
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imusic/pages/Tabbar.dart';
import 'package:imusic/pages/tabs/home.dart';
import 'package:imusic/ui/bottomPlay.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    void _showChangeUsernameDialog() {
      String newUsername = ''; // Variable to store the new username

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('改变'),
            content: TextField(
              onChanged: (value) {
                newUsername = value;
              },
              decoration: const InputDecoration(hintText: '输入'),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('保存'),
                onPressed: () {
                  // Perform the action to save the new username
                  // For example, update the state with the new username value
                  setState(() {
                    // Update the username with the new value
                    // username = newUsername;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
        body: ListView(children: [
       Row(
        children: [
          IconButton(onPressed:(){
            Navigator.of(context).pop();
          }, icon: const Icon(Icons.arrow_back_ios_new_rounded),),
          const Text(
            "退出",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Expanded(
            child: Text(
              "设置",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),

      //const Divider(),
      Column(
        children: [
          const Divider(),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Text(
                  "账号",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onFocusChange: (value) {},
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              )),
          // const SizedBox(
          //   height: 34,
          // ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Text(
                  "ID",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              )),
          // const SizedBox(
          //   height: 34,
          // ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Text(
                  "昵称",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              )),
          // const SizedBox(
          //   height: 34,
          // ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Text(
                  "头像",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              )),
          // const SizedBox(
          //   height: 34,
          // ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Text(
                  "生日",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              )),
          // const SizedBox(
          //   height: 34,
          // ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: const Text(
                  "资料卡背景",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              )),
        ],
      ),
      Container(
          width: 50,
          height: 40,
          margin: const EdgeInsets.fromLTRB(140, 140, 150, 5),
          //padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(width: 0.5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.1, 0.1),
                  spreadRadius: 0.1,
                )
              ]),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const MyHomePage()));
            },
            child: const Text(
              "退出账号",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )),
      const BottomPlay(),
    ]));
  }
}
