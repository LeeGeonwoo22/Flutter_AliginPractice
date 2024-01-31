import 'package:flutter/material.dart';

class basicWidget3 extends StatefulWidget {
  const basicWidget3({super.key});

  @override
  State<basicWidget3> createState() => _basicWidget3State();
}

class _basicWidget3State extends State<basicWidget3> {
  var _isChecked = false;
  var _isChecked2 = false;
// 입력용 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: checkBoxRadio());
  }

  Widget textField() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(labelText: '여기에 입력하세요'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "여기에 입력하세요"),
          )
        ],
      ),
    );
  }

  Widget checkBoxRadio() {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        SizedBox(
          height: 40,
        ),
        Switch(
            value: _isChecked2,
            onChanged: (value) {
              setState(() {
                _isChecked2 = value;
              });
            })
      ]),
    );
  }
}
