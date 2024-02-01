import 'package:flutter/material.dart';

enum Gender {
  MAN,
  WOMAN,
}

class BasicWidget4 extends StatefulWidget {
  const BasicWidget4({super.key});

  @override
  State<BasicWidget4> createState() => _BasicWidget4State();
}

class _BasicWidget4State extends State<BasicWidget4> {
  Gender _gender = Gender.MAN;
  final _valueList = ['첫번째', '두번째', '세번째'];
  var _selectedValue = '첫번째';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio/radioList'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
            child:
                // ListTitle_RadioListTitle(),
                Column(
          children: [
            DropdownButton(
                items: _valueList
                    .map((value) =>
                        DropdownMenuItem(value: value, child: Text(value)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                })
          ],
        )),
      ),
    );
  }

  Widget ListTitle_RadioListTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          title: Text('남자'),
          leading: Radio(
            value: Gender.MAN,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value!;
              });
            },
          ),
        ),
        ListTile(
          title: Text('여자'),
          leading: Radio(
              value: Gender.WOMAN,
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
              groupValue: _gender),
        ),
        SizedBox(
          height: 40,
        ),
        RadioListTile(
          title: Text('남자'),
          value: Gender.MAN,
          groupValue: _gender,
          onChanged: (value) {
            setState(() {
              _gender = value!;
            });
          },
        ),
        RadioListTile(
          title: Text('여자'),
          value: Gender.WOMAN,
          groupValue: _gender,
          onChanged: (value) {
            setState(() {
              _gender = value!;
            });
          },
        ),
      ],
    );
  }
}
