import 'package:flutter/material.dart';

class BasicWidget5 extends StatefulWidget {
  const BasicWidget5({super.key});

  @override
  State<BasicWidget5> createState() => _BasicWidget5State();
}

class _BasicWidget5State extends State<BasicWidget5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ElevatedButton(
            onPressed: () {
              asdf(context);
            },
            child: Text('test')));
  }

  asdf(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('제목'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text('Alert dialog입니다.'),
              Text('OK를 닫습니다.'),
            ]),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('cancel'),
            )
          ],
        );
      },
    );
  }
}
