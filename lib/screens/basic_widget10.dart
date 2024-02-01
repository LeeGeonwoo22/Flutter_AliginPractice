import 'package:flutter/material.dart';

class Basic_widget10 extends StatelessWidget {
  const Basic_widget10({super.key});

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
            title: Text('Silver'),
            // 확대/축소되는 영역의 Ui를 작성함
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              '/images/sample.jpg',
              fit: BoxFit.cover,
            )),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('center'),
            ),
          )
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
