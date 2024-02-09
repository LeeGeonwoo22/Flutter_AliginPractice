import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/screens/aligin_study.dart';
import 'package:flutter_study/screens/basic_widget%2011.dart';
import 'package:flutter_study/screens/basic_widget%2012-1.dart';
import 'package:flutter_study/screens/basic_widget%2012.dart';
import 'package:flutter_study/screens/basic_widget%2013.dart';
import 'package:flutter_study/screens/basic_widget%2014.dart';
import 'package:flutter_study/screens/basic_widget%2014-1.dart';
import 'package:flutter_study/screens/basic_widget%2015.dart';
import 'package:flutter_study/screens/basic_widget%2016.dart';
import 'package:flutter_study/screens/basic_widget%2017.dart';
import 'package:flutter_study/screens/basic_widget%2018.dart';
import 'package:flutter_study/screens/basic_widget%2019.dart';
import 'package:flutter_study/screens/basic_widget%2020.dart';
import 'package:flutter_study/screens/basic_widget%2021.dart';
import 'package:flutter_study/screens/basic_widget10.dart';
import 'package:flutter_study/screens/basic_widget2.dart';
import 'package:flutter_study/screens/basic_widget3.dart';
import 'package:flutter_study/screens/basic_widget4.dart';
import 'package:flutter_study/screens/basic_widget5.dart';
import 'package:flutter_study/screens/basic_widget6.dart';
import 'package:flutter_study/screens/basic_widget7.dart';
import 'package:flutter_study/screens/basic_widget8.dart';
import 'package:flutter_study/screens/basic_widget9.dart';
import 'package:flutter_study/screens/refresh_widget.dart';
import 'package:flutter_study/screens/save_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // Systemchrome 시스템창 UI 관련 설정 .
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent, // 상태표시줄 색상
      statusBarIconBrightness: Brightness.dark, // 상태 표시줄 아이콘 색상 설정
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Refresh(),
      // Map형태로 키-쌍 값으로 문자열과 목적지 인스턴스를 작성.
      // routes: {'/first': (context) => Basic_Widget_18()},
    );
  }
}

class JsonReciver extends StatefulWidget {
  const JsonReciver({super.key});

  @override
  State<JsonReciver> createState() => _JsonReciverState();
}

class _JsonReciverState extends State<JsonReciver> {
  void initState() {
    super.initState();
    // initState에서 파일 읽기 함수 호출
    //_readJsonFile();
    loadJson();
  }

  Future<void> _readJsonFile() async {
    try {
      File file = File('assets/data/students.json');
      print(file);

      String contents = await file.readAsString();
      print(contents);
      setState(() {
        studentList = json.decode(contents)['students'];
      });
    } catch (e) {
      print('Error reading file: $e');
      // 파일 읽기 오류에 대한 핸들링
    }
  }

  static Future loadJson() async {
    final String response =
        await rootBundle.loadString('assets/data/students.json');
    print(response);
    final data = await json.decode(response);
    print(response);
    print(data);
    return data['students'];
  }

  Future studentList = loadJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json file receiving test'),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
            future: studentList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                          '${snapshot.data[index]['id']} : ${snapshot.data[index]["full_name"]}'),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }
            }),
      ),
    );
  }
}
