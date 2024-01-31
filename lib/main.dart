import 'package:flutter/material.dart';
import 'package:flutter_study/screens/aligin_study.dart';
import 'package:flutter_study/screens/basic_widget.dart';
import 'package:flutter_study/screens/basic_widget2.dart';
import 'package:flutter_study/screens/basic_widget3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const basicWidget3(),
    );
  }
}
