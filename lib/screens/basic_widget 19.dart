import 'package:flutter/material.dart';

class Basic_Widget_19 extends StatefulWidget {
  const Basic_Widget_19({super.key});

  @override
  State<Basic_Widget_19> createState() => _Basic_Widget_19State();
}

class _Basic_Widget_19State extends State<Basic_Widget_19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded, Flexible 반응형 예제'),
        centerTitle: true,
      ),
      body: Row(children: [
        // Container(
        //   // 비율로 떄릴일이 많음.
        //   width: MediaQuery.of(context).size.width / 2,
        //   height: 150,
        //   //MediaQuery.of(context).size.height,
        //   color: Colors.blue,
        // ),
        // Container(
        //   width: MediaQuery.of(context).size.width / 2,
        //   height: 150,
        //   //MediaQuery.of(context).size.height,
        //   color: Colors.red,
        // ),
        Flexible(
          flex: 1,
          child: Container(
            // 비율로 떄릴일이 많음.
            // width: MediaQuery.of(context).size.width / 2,
            height: 150,
            //MediaQuery.of(context).size.height,
            color: Colors.blue,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            // 비율로 떄릴일이 많음.
            // width: MediaQuery.of(context).size.width / 2,
            height: 150,
            //MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
        ),
      ]),
    );
  }
}
