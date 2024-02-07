import 'package:flutter/material.dart';
import 'package:flutter_study/screens/basic_widget%2012.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final String age;
  const SecondPage({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Basic_Widget_12()));
                  Navigator.pop(context, 'ok');
                },
                child: Text('이전 페이지로'),
              ),
            ),
            Text(this.name),
            Text(this.age),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity_rounded),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_alt),
          label: 'Notification',
        ),
      ]),
    );
  }
}
