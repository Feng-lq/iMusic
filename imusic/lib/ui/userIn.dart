import 'package:flutter/material.dart';
import 'package:imusic/pages/tabs/loginPage.dart';

class UserIn extends StatefulWidget {
  const UserIn({super.key});

  @override
  State<UserIn> createState() => _UserInState();
}

class _UserInState extends State<UserIn> {
  @override
  Widget build(BuildContext context) {
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            padding: const EdgeInsets.all(10),
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
          const SizedBox(
            height: 100,
          ),
          Positioned(
            child: Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                height: 40,
                width: 255,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 198, 225, 241),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TextButton(
                  //label: Image.asset(R.assetsImgP4),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage()));
                  },
                  child: const Text(
                    "登录/注册您的iMusic账号",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                )),
          ),
        ],
      );
    
  }
}
