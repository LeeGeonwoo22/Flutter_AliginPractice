import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Basic_Widget_11 extends StatefulWidget {
  const Basic_Widget_11({super.key});

  @override
  State<Basic_Widget_11> createState() => _Basic_Widget_11State();
}

class _Basic_Widget_11State extends State<Basic_Widget_11> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('4.10 쿠퍼티노 디자인'),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
            value: _isOn,
            onChanged: (bool value) {
              setState(() {
                _isOn = value;
              });
            },
          ),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16),
              child: Text('쿠퍼티노 AlertDialog'),
              onPressed: () {}),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16),
              child: Text('쿠퍼티노 Picker'),
              onPressed: () {})
        ],
      ));
      }
     _showCupertinoDialog(){
      showDialog(context: context, builder: (context) =>
        CupertinoAlertDialog(
          title: Text('제목'),
          content: Text('내용'),
          actions: [
            CupertinoDialogAction(child: Text('Ok'),
            onPressed: (){
              Navigator.of(context).pop();
            },
            )
          ],
        )
      )
      }
    
  }

