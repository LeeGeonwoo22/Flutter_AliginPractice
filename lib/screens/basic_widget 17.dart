import 'package:flutter/material.dart';

class Basic_Widget_17 extends StatefulWidget {
  const Basic_Widget_17({super.key});

  @override
  State<Basic_Widget_17> createState() => _Basic_Widget_17State();
}

class _Basic_Widget_17State extends State<Basic_Widget_17> {
  final postList = [
    {
      "i": "1",
      "color": Colors.amber,
    },
    {
      "i": "2",
      "color": Colors.amber.shade600,
    },
    {
      "i": "3",
      "color": Colors.amber.shade700,
    },
    {
      "i": "4",
      "color": Colors.amber.shade800,
    },
    {
      "i": "5",
      "color": Colors.amber.shade900,
    },
    {
      "i": "6",
      "color": Colors.orange,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test title'),
          centerTitle: true,
        ),
        body:
            // GridViewWidgets(),
            GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                ),
                itemCount: postList.length,
                itemBuilder: (BuildContext con, int index) {
                  return PostContainer(i: postList[index]["i"].toString());
                }));
  }

  // Widget GridViewWidgets() {
  //   return GridView(
  //     scrollDirection: Axis.horizontal,
  //     // grideDelegated 는 그리드가 어떻게 생겨질지 결정됨.
  //     // 그리드의 가로길이를 결정하고 난뒤, 사이즈가 어떻게든 맞춰갈때 그리드를 끼워넣음 컨텐츠의 사이즈가 바뀜
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       // 세로줄 기준으로 박스 카운트
  //       crossAxisCount: 6,
  //       // 각각 가로 세로 간격
  //       crossAxisSpacing: 10,
  //       mainAxisSpacing: 8,
  //     ),
  //     children: [
  //       PostContainer('1'),
  //       PostContainer('2'),
  //       PostContainer('3'),
  //       PostContainer('4'),
  //       PostContainer('5'),
  //       PostContainer('6')
  //     ],
  //     // 가로 길이를 결정하고 난뒤 그에 맞게 기둥들이 들어감.
  //     // SliverGridDelegateWithMaxCrossAxisCount
  //   );
  // }

  Widget PostContainer({String i = "0"}) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: Center(child: Text("Box $i")),
    );
  }
}
