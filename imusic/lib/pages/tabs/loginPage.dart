import 'package:flutter/material.dart';
import 'package:imusic/main.dart';
import 'package:imusic/r.dart';
import 'package:imusic/pages/tabs/registHomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(R.assetsImgBackground),
                    fit: BoxFit.cover)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Scaffold(
                //   body: Container(
                //   height: 30,
                //   width: 500,
                //   child: Image.asset(R.assetsImgP4),
                //   ),
                // ),
                ListView(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 200,
                      width: 500,
                      child: Image.asset(R.assetsImgP4),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          "iMusic",
                          style: TextStyle(
                              fontSize: 40,
                              color: Color.fromRGBO(90, 90, 90, 1.0)),
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Make Life More Mucial",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(90, 90, 90, 1.0)),
                      ),
                    ),
                    Container(
                        height: 310,
                        width: 400,
                        margin: const EdgeInsets.fromLTRB(50, 60, 50, 150),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                              )
                            ]),
                        child: ListView(
                          children: [
                            Container(
                                height: 50,
                                width: 100,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    /*boxShadow: [BoxShadow(
                          color: Colors.black,
                          offset: Offset(10,20),
                          spreadRadius: 0.0,
                        ),]*/
                                    ),
                                child: const Text("账号登录",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30))),
                            Container(
                              width: 200,
                              height: 50,
                              margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  border: Border.all(width: 0.5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.1),
                                    )
                                  ]),
                              child: TextFormField(
                                decoration:
                                    const InputDecoration(labelText: ("账号:")
                                        // hintStyle:
                                        //     color: Colors.black,
                                        //     fontSize: 15,
                                        //     fontWeight: FontWeight.bold)
                                        ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                                width: 200,
                                height: 50,
                                margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    border: Border.all(width: 0.5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(0.0, 0.1),
                                      )
                                    ]),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    hintText: "密码:",
                                    //为什么没有到上面！！！！！！！
                                  ),
                                )
                                //   const Text("密码:""密码:",
                                //       textAlign: TextAlign.left,
                                //       style: TextStyle(
                                //           color: Colors.black,
                                //           fontSize: 15,
                                //           fontWeight: FontWeight.bold)),
                                ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.all(10),
                              child: TextButton(
                                // icon: null,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const RegistPage()));
                                },
                                child: const Text(
                                  "立即注册",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                            ),
                            Container(
                                width: 50,
                                height: 50,
                                margin: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        115, 188, 240, 1.0),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
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
                                                const Tabs()));
                                  },
                                  child: const Text(
                                    "点击登录",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )

                                //   const Text(
                                //     "点击登录",
                                //     textAlign: TextAlign.center,
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 15,
                                //     ),
                                //   ),
                                )
                          ],
                        )),
                  ],
                ),
              ],
            )));
  }
}
