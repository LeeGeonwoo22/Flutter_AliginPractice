import 'package:flutter/material.dart';

class Basic_Widget_16 extends StatelessWidget {
  const Basic_Widget_16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar size 조절
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: Text(
            'Custom height AppBar',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.amberAccent,
        ),
      ),
      body: Center(
        child: Text('Hello, World! We can do adjust app bar Size '),
      ),
    );
  }
}
