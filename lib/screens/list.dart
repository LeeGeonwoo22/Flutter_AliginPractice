import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  ListViewClass({super.key});
  final postList = [
    {
      "title": "Title 1",
      "color": Colors.blue.shade100,
    },
    {
      "title": "Title 2",
      "color": Colors.blue.shade200,
    },
    {
      "title": "Title 3",
      "color": Colors.blue.shade300,
    },
    {
      "title": "Title 4",
      "color": Colors.blue.shade400,
    },
    {
      "title": "Title 5",
      "color": Colors.blue.shade500,
    },
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   List postList = [];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Title'),
      ),
      // body: ListView(
      //   children: [
      //     postContainer(context: context, title: 'Title 1'),
      //     postContainer(context: context, title: 'Title 2'),
      //     postContainer(context: context, title: 'Title 3'),
      //     postContainer(context: context, title: 'Title 4'),
      //     postContainer(context: context, title: 'Title 5'),
      //   ],
      // ),
      body: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (BuildContext context, index) {
            return postContainer(
              context: context,
              title: postList[index]["title"] as String,
              colorData: postList[index]["color"] as Color,
            );
          }),
    );
  }

  // Widget listView() {
  //   return ListView(
  //     scrollDirection: Axis.vertical,
  //     children: [
  //       ListTile(
  //         leading: const Icon(Icons.home),
  //         title: const Text('Home'),
  //         trailing: const Icon(Icons.navigate_next),
  //         onTap: () {},
  //       ),
  //       ListTile(
  //         leading: const Icon(Icons.event),
  //         title: const Text('Event'),
  //         trailing: const Icon(Icons.navigate_next),
  //         onTap: () {},
  //       ),
  //       ListTile(
  //         leading: const Icon(Icons.camera),
  //         title: const Text('Cam'),
  //         trailing: const Icon(Icons.navigate_next),
  //         onTap: () {},
  //       )
  //     ],
  //   );
  // }

  Widget postContainer(
      {required context, String title = "", Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            'title',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        ),
      ],
    );
  }
}
