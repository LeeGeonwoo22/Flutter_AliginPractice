import 'package:flutter/material.dart';

class BasicWidget_13 extends StatefulWidget {
  const BasicWidget_13({super.key});

  @override
  State<BasicWidget_13> createState() => _BasicWidget_13State();
}

class _BasicWidget_13State extends State<BasicWidget_13> {
  var _productName;
  @override
  void _updateText(String val) {
    setState(() {
      _productName = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField & TextFormField'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Product Name',
                    icon: Icon(Icons.verified_user_outlined),
                    prefix: Icon(Icons.add_alarm_sharp),
                    labelText: 'Product'),
              ),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (val) {
                  _updateText(val);
                },
                decoration: InputDecoration(
                    labelText: 'Field Name',
                    icon: Icon(Icons.verified_user_outlined),
                    prefix: Icon(Icons.check),
                    border: OutlineInputBorder(),
                    hintText: 'Field Name'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
