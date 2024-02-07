import 'package:flutter/material.dart';
import 'package:flutter_study/screens/basic_widget%2014-1.dart';

// 생명주기
// 첫 렌더링 - 생성 - initstate()
// 페이지 바뀜 - 소멸 - dispose()

class Basic_Widget_14 extends StatefulWidget {
  const Basic_Widget_14({super.key});

  @override
  State<Basic_Widget_14> createState() => _Basic_Widget_14State();
}

@override
class _Basic_Widget_14State extends State<Basic_Widget_14> {
  @override
  void initState() {
    super.initState(); // 반드시 호출해야 합니다.
    print('First initstate()');
  }

  @override
  void dispose() {
    super.dispose();
    print('first dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('first build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: () {
          final person = Person('장길산', 20);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondStateFulPage(
                        person: person,
                      )));
        },
      ),
    );
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
