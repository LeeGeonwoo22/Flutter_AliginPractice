import 'package:flutter/material.dart';

enum Gender {
  MAN,
  WOMAN,
}

class BasicWidget3 extends StatefulWidget {
  const BasicWidget3({super.key});

  @override
  State<BasicWidget3> createState() => _BasicWidget3State();
}

class _BasicWidget3State extends State<BasicWidget3> {
  var _isChecked = false;
  var _isChecked2 = false;
// 입력용 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListTitle());
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

  Widget radioListTile() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              }),
          SizedBox(
            height: 40,
          ),
          Switch(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              })
        ],
      ),
    );
  }

  Gender _gender = Gender.MAN;

  Widget ListTitle() {
    return ListTile(
      title: Text("남자"),
      leading: Radio(
        value: Gender.MAN,
        groupValue: _gender,
        onChanged: (value) {
          setState(() {
            _gender = value!;
          });
        },
      ),
    );
  }
}
