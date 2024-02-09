import 'package:flutter/material.dart';
import 'package:flutter_study/screens/basic_widget%2012-1.dart';

class Basic_Widgets_20 extends StatefulWidget {
  const Basic_Widgets_20({super.key});

  @override
  State<Basic_Widgets_20> createState() => _Basic_Widgets_20State();
}

class _Basic_Widgets_20State extends State<Basic_Widgets_20>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      return setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        body: _currentIndex == 0
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                        center: Alignment.center,
                        colors: [
                          Colors.amber[100] as Color,
                          Colors.amber[300] as Color,
                          Colors.amber[500] as Color,
                        ],
                        stops: [0.1, 0.3, 0.5],
                        radius: 1.0)),
              )
            : _currentIndex == 1
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                            center: Alignment.center,
                            colors: [
                              Colors.blue[100] as Color,
                              Colors.blue[300] as Color,
                              Colors.blue[500] as Color,
                            ],
                            stops: [0.1, 0.3, 0.5],
                            radius: 1.0)))
                : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                            center: Alignment.center,
                            colors: [
                              Colors.red[100] as Color,
                              Colors.red[300] as Color,
                              Colors.red[500] as Color,
                            ],
                            stops: [0.1, 0.3, 0.5],
                            radius: 1.0))),
        // 원래 기본버전
        // bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: _currentIndex,
        //     onTap: (index) {
        //       setState(() {
        //         _currentIndex = index;
        //         // Navigator.push(
        //         //     context,
        //         //     MaterialPageRoute(
        //         //         builder: (context) => SecondPage(
        //         //               age: '20',
        //         //               name: '박문수',
        //         //             )));
        //         // Navigator.of(context).pop();
        //         switch (index) {
        //           case 0:
        //             // 홈 페이지로 이동
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => SecondPage(
        //                   age: '20',
        //                   name: '박문수',
        //                 ),
        //               ),
        //             );
        //             break;
        //           case 1:
        //             // 프로필 페이지로 이동
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => ProfileScreen(),
        //               ),
        //             );
        //             break;
        //           case 2:
        //             // 알림 페이지로 이동
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => NotificationScreen(),
        //               ),
        //             );
        //             break;
        //         }
        //       });
        //     },
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         label: 'Home',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.perm_identity_rounded),
        //         label: 'Profile',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.note_alt),
        //         label: 'Notification',
        //       ),
        //     ])
        bottomNavigationBar: SizedBox(
            height: 80,
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(Icons.photo_size_select_actual_rounded),
                  text: "Amber",
                ),
                Tab(
                  icon: Icon(Icons.water_drop_rounded),
                  text: "Blue",
                ),
                Tab(
                  icon: Icon(Icons.apple_outlined),
                  text: "Red",
                )
              ],
            )));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notification Screen'),
    );
  }
}
