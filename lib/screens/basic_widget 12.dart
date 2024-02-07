import 'package:flutter/material.dart';
import 'package:flutter_study/screens/basic_widget%2012-1.dart';

class Basic_Widget_12 extends StatelessWidget {
  const Basic_Widget_12({super.key});

  @override
  Widget build(BuildContext context) {
    print('Basic_Widget_12 build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
        actions: [],
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondPage(
                          age: '20',
                          name: '장길산',
                        )));
          },
          child: Text('다음페이지로')),
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
