import 'package:flutter/material.dart';
import 'package:flutter_study/screens/aligin_study.dart';
import 'package:flutter_study/screens/basic_widget%2011.dart';
import 'package:flutter_study/screens/basic_widget%2012-1.dart';
import 'package:flutter_study/screens/basic_widget%2012.dart';
import 'package:flutter_study/screens/basic_widget%2013.dart';
import 'package:flutter_study/screens/basic_widget%2014.dart';
import 'package:flutter_study/screens/basic_widget%2014-1.dart';
import 'package:flutter_study/screens/basic_widget%2015.dart';
import 'package:flutter_study/screens/basic_widget.dart';
import 'package:flutter_study/screens/basic_widget10.dart';
import 'package:flutter_study/screens/basic_widget2.dart';
import 'package:flutter_study/screens/basic_widget3.dart';
import 'package:flutter_study/screens/basic_widget4.dart';
import 'package:flutter_study/screens/basic_widget5.dart';
import 'package:flutter_study/screens/basic_widget6.dart';
import 'package:flutter_study/screens/basic_widget7.dart';
import 'package:flutter_study/screens/basic_widget8.dart';
import 'package:flutter_study/screens/basic_widget9.dart';

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
      home: Basic_Widget_15(),
      // Map형태로 키-쌍 값으로 문자열과 목적지 인스턴스를 작성.
      routes: {'/first': (context) => Basic_Widget_14()},
    );
  }
}
