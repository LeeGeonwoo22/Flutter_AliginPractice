import 'package:flutter/material.dart';

class Basic_widget8 extends StatelessWidget {
  const Basic_widget8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroDetailPage()),
            );
          },
          child: Hero(
              tag: 'image',
              child: Image.asset(
                '/images/sample.jpg',
                width: 100,
                height: 100,
              )),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero detail')),
      body: Hero(
        tag: 'image',
        child: Image.asset('/images/sample.jpg'),
      ),
    );
  }
}
