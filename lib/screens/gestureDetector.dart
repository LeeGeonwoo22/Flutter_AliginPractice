import 'package:flutter/material.dart';

class Basic_widget7 extends StatefulWidget {
  const Basic_widget7({super.key});

  @override
  State<Basic_widget7> createState() => _Basic_widget7State();
}

class _Basic_widget7State extends State<Basic_widget7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
          GestureDetector(
            onTap: () {
              print("gestureDetector 클릭!!!");
            },
            child: Text('클릭 Me!!'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              print('inkwell 클릭');
            },
            child: Text('클릭 me!!'),
          )
        ]))));
  }
}
