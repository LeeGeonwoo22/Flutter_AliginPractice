import 'package:flutter/material.dart';

// pageview 예제
// ignore: camel_case_types
class basicWidget2 extends StatelessWidget {
  const basicWidget2({super.key});
  Widget text() {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.network(
          'http://bit.ly/2Pvz4t8',
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Hello World',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            letterSpacing: 4.0,
          ),
        ),
      ]),
    );
  }

  Widget button() {
    return Center(
        child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
          color: Colors.blueAccent,
          iconSize: 100,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        )
      ],
    ));
  }

  Widget kindOfButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          // 그림자 깊이
          elevation: 4,
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text('RaisedButton')),
        SizedBox(
          height: 10,
        ),
        TextButton(
          child: Text('TextButton'),
          onPressed: () {},
        ),
      ],
    );
  }

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
    return Scaffold(body: text());
  }
}
