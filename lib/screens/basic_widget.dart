import 'package:flutter/material.dart';

// ignore: camel_case_types
class basicWidget extends StatelessWidget {
  const basicWidget({super.key});

// 리스트뷰, 스택, 그리드뷰 예제

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         centerTitle: true,
  //         title: const Text('제목'),
  //         bottom: _tabBar(),
  //       ),

  //       // bottomNavigationBar: tabBar(),
  //       body: // Text('예제')
  //           // listView(),
  //           _tabBarView());
  // }

// 탭바, 반드시 controller를 넣어줘야한다.

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('제목'),
            bottom: _tabBar(),
          ),

          // bottomNavigationBar: tabBar(),
          body: // Text('예제')
              // listView(),
              _tabBarView()),
    );
  }

  PreferredSizeWidget _tabBar() {
    return const TabBar(tabs: [
      Tab(
        icon: Icon(Icons.tag_faces),
      ),
      Tab(
        text: 'menu',
      ),
      Tab(
        icon: Icon(Icons.info),
        text: 'menu3',
      )
    ]);
  }

  Widget _tabBarView() {
    return TabBarView(
      children: [
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.red,
        ),
      ],
    );
  }

  Widget exampleContainer_1() {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
    );
  }

  Widget exampleContainer_2() {
    return Column(
      // Column 또는 Row
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
        ),
      ],
    );
  }

  Widget exampleStack_3() {
    return Stack(
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
        ),
      ],
    );
  }

  Widget exampleGrid_1() {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.greenAccent,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.blueAccent,
          width: 100,
          height: 100,
        ),
      ],
    );
  }

  Widget listView() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.event),
          title: const Text('Event'),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.camera),
          title: const Text('Cam'),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {},
        )
      ],
    );
  }
}
