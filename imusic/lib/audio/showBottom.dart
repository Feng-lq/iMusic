import 'package:flutter/material.dart';

class showBottom extends StatefulWidget {
  const showBottom({super.key});

  @override
  State<showBottom> createState() => _showBottomState();
}

class _showBottomState extends State<showBottom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: double.infinity,
            child: const Column(
              children: [
                SizedBox(
                      height: 50,
                    ),
                Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '稻香',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '-周杰伦',
                      style: TextStyle(),
                    )
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '稻香',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '-周杰伦',
                      style: TextStyle(),
                    )
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '稻香',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '-周杰伦',
                      style: TextStyle(),
                    )
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '稻香',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      '-周杰伦',
                      style: TextStyle(),
                    )
                  ],
                ),

              ],
            ),
          ),
          // const Text(
          //   'This is a bottom sheet',
          //   style: TextStyle(fontSize: 18),
          // ),
          // const SizedBox(height: 20),
        ]),
      ],
    );
  }
}
