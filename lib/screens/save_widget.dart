import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DiskSave extends StatefulWidget {
  const DiskSave({super.key});

  @override
  State<DiskSave> createState() => _DiskSaveState();
}

class _DiskSaveState extends State<DiskSave> {
  late SharedPreferences _prefs;
  String _username = "";
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUsername();
  }

  _saveUsername() {
    setState(() {
      _username = _usernameController.text;
      _prefs.setString("currentUsername", _username);
    });
  }

  _getUsername() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = _prefs.getString("currentUsername") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test widgets')),
      body: Container(
        child: Column(children: [
          Column(
            children: [
              Text("현재 사용 이름 : $_username"),
              Container(
                child: TextField(
                  controller: _usernameController,
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Input your username',
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    return _saveUsername();
                  },
                  child: const Text('저장'))
            ],
          )
        ]),
      ),
    );
  }
}
