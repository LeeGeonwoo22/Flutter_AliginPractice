import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// 복잡한 ui 작성

class Basic_Widget_15 extends StatefulWidget {
  const Basic_Widget_15({super.key});

  @override
  State<Basic_Widget_15> createState() => _Basic_Widget_15State();
}

class _Basic_Widget_15State extends State<Basic_Widget_15> {
  var index = 0;
  var pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('복잡한 UI'),
      ),
      // body: Center(
      //   child: Text(
      //     '$index 페이지',
      //     style: TextStyle(fontSize: 40),
      //   ),
      // ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index2) {
          setState(() {
            index = index2;
          });
        },
        currentIndex: index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: '홈', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '이용서비스', icon: Icon(Icons.assignment)),
          BottomNavigationBarItem(
              label: '내 정보', icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [_buildTop(), _buildMiddle(context), _buildBottom()]),
    ]);
  }
}

// body 렌더화면 구성
// Widget _buildTop() {
//   return Text('Top');
// }

Widget _buildMiddle(context) {
  return CarouselSlider(
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            // 다른 위젯 속성 및 내용 추가
            decoration: BoxDecoration(color: Colors.amber),
            child: Center(
              child: Text(
                'text $i',
                style: TextStyle(fontSize: 16),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 5),
          );
        });
      }).toList(),
      options: CarouselOptions(
          height: 200, enlargeCenterPage: true, autoPlay: true));
}

Widget _buildBottom() {
  final items = List.generate(
      10,
      (index) => ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text('[이벤트] 이것은 공지사항입니다.'),
          ));

  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: items,
  );
}

Widget _buildTop() {
  return Column(children: [
    Icon(
      Icons.pedal_bike,
      size: 40,
    ),
    Text('바이크'),
  ]);
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        Icons.train,
        size: 40,
      ),
      Text('바이크'),
    ]);
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
