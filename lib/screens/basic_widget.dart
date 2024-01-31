import 'package:flutter/material.dart';

// ignore: camel_case_types
class basicWidget extends StatelessWidget {
  const basicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('제목'),
          bottom: _tabBar(),
        ),

        // bottomNavigationBar: tabBar(),
        body: // Text('예제')
            // listView(),
            _tabBarView());
  }

  PreferredSizeWidget _tabBar() {
    return TabBar(tabs: [
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

Widget exampleContainer_3() {
  return Stack(
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
        leading: Icon(Icons.home),
        title: Text('Home'),
        trailing: Icon(Icons.navigate_next),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.event),
        title: Text('Event'),
        trailing: Icon(Icons.navigate_next),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.camera),
        title: Text('Cam'),
        trailing: Icon(Icons.navigate_next),
        onTap: () {},
      )
    ],
  );
}
