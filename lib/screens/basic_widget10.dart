import 'package:flutter/material.dart';

class Basic_widget10 extends StatelessWidget {
  Basic_widget10({super.key});
  final _items = List.generate(
      50,
      (index) => ListTile(
            title: Text('No. $index'),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // app바가 사라질지 결정함
            pinned: true,
            // 확대될때 최대의 높이를 정함
            expandedHeight: 180.0,

            // 확대/축소되는 영역의 Ui를 작성함
            flexibleSpace: FlexibleSpaceBar(
                title: Text('Silver'),
                background: Image.asset(
                  '/images/sample.jpg',
                  fit: BoxFit.cover,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/github-logo.png'))
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}

class SilverListPage extends StatelessWidget {
  SilverListPage({super.key});
  final _items = List.generate(
      50,
      (index) => ListTile(
            title: Text('No, $index'),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
          )
        ],
      ),
    );
  }
}
