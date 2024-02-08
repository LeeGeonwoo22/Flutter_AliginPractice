import 'package:flutter/material.dart';

class Basic_Widget_18 extends StatefulWidget {
  const Basic_Widget_18({super.key});

  @override
  State<Basic_Widget_18> createState() => _Basic_Widget_18State();
}

class _Basic_Widget_18State extends State<Basic_Widget_18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test title'),
      ),
      body: Container(
          child: Center(
        child: TextButton(
          onPressed: () {
            // showdialog는 기본 내장 위젯이다.
            showDialog(
                context: context,
                builder: (BuildContext con) {
                  return AlertDialog(
                    title: const Text('dialog title'),
                    content: SingleChildScrollView(
                      child: const Text('data'),
                    ),
                    actions: [
                      OutlinedButton(
                        onPressed: () {
                          return Navigator.of(context).pop();
                        },
                        child: Text('outlined button Close'),
                      ),
                      TextButton(
                        onPressed: () {
                          return Navigator.of(context).pop();
                        },
                        child: Text('text button Close'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          return Navigator.of(context).pop();
                        },
                        child: Text('elevated button Close'),
                      )
                    ],
                  );
                });
          },
          child: Center(
              child: Text(
            'Text Button',
            style: TextStyle(color: Colors.lightBlueAccent),
          )),
        ),
      )),
    );
  }
}
