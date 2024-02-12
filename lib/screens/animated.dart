import 'package:flutter/material.dart';
import 'dart:math';

class Basic_widget9 extends StatefulWidget {
  const Basic_widget9({super.key});

  @override
  State<Basic_widget9> createState() => _Basic_widget9State();
}

class _Basic_widget9State extends State<Basic_widget9> {
  var _size = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimaedContainer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            final random = Random();
            setState(() {
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _size,
            height: _size,
            child: Image.asset('/images/sample.jpg'),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
