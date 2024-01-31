import 'package:flutter/material.dart';

// pageview 예제
// ignore: camel_case_types
class basicWidget2 extends StatelessWidget {
  const basicWidget2({super.key});

  Widget pageView() {
    return PageView(
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: pageView());
  }
}
