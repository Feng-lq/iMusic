import 'package:flutter/material.dart';
import 'package:imusic/pages/tabs/loginPage.dart';
import '../../r.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(R.assetsImgBackground), fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Container(
              //   height: double.infinity,
              //   width: double.infinity,
              //   padding: const EdgeInsets.all(10),
              //   decoration: const BoxDecoration(
              //       color: Colors.white,
              //       //borderRadius: BorderRadius.all(Radius.circular(15)),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black,
              //           offset: Offset(0.5, 0.5),
              //         )
              //       ]),
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
                      height: 450,
                      width: 250,
                      margin: const EdgeInsets.fromLTRB(50, 50, 50, 150),
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
                              child: const Text("新用户注册",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black))),
                          Container(
                            width: 200,
                            height: 50,
                            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(width: 0.5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0.0, 0.1),
                                  )
                                ]),
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: "账号:"),
                            ),
                          ),
                          //   const Text("账号:",
                          //       style: TextStyle(
                          //           fontSize: 15,
                          //           fontWeight: FontWeight.bold)),
                          // ),
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
                              // child: const Text("密码:",
                              //     textAlign: TextAlign.left,
                              //     style: TextStyle(
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.bold)),
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
                                decoration: const InputDecoration(
                                  hintText: "电话:",
                                ),
                              )),
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
                                  hintText: "输入验证码:",
                                ),
                              )),
                          Container(
                            alignment: Alignment.bottomRight,
                            margin: const EdgeInsets.all(10),
                            child: TextButton(
                              // icon: null,

                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginPage()));
                              },
                              child: const Text(
                                "返回登录",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ),
                            // child:
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(115, 188, 240, 1.0),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(width: 0.5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0.0, 0.1),
                                  )
                                ]),

                                 child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "点击注册",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
        )));
  }
}
