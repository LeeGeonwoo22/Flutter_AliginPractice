import 'package:flutter/material.dart';
import 'package:flutter_study/main.dart';

void main() => runApp(MyApp());

class Basic_Widget_12 extends StatelessWidget {
  const Basic_Widget_12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
        actions: [],
      ),
      body: ElevatedButton(onPressed: () {}, child: Text('다음페이지로')),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second'),
        ),
        body: ElevatedButton(
          onPressed: () {},
          child: Text('이전 페이지로'),
        ));
  }
}
