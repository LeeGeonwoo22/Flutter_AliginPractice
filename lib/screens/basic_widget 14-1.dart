import 'package:flutter/material.dart';
import 'package:flutter_study/screens/basic_widget%2014.dart';

// 생명주기
// 첫 렌더링 - initstate()
// 페이지 바뀜 - dispose()

class SecondStateFulPage extends StatefulWidget {
  final Person person;
  const SecondStateFulPage({
    super.key,
    required this.person,
  });

  @override
  State<SecondStateFulPage> createState() => _SecondStateFulPageState();
}

class _SecondStateFulPageState extends State<SecondStateFulPage> {
  @override
  void initState() {
    super.initState(); // 반드시 호출해야 합니다.
    print('second initstate()');
  }

  @override
  void dispose() {
    super.dispose();
    print('second dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.person.name),
        ),
        body: ElevatedButton(
          child: Text('이전 페이지로'),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
