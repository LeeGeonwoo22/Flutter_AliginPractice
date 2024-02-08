import "package:flutter/material.dart";

class AliginScreen extends StatelessWidget {
  const AliginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child:
          // mainCrossAlignment(context)),
          StackMargin(),
    ));
  }

  // Align aliginExample() {
  //   return Align(
  //     alignment: Alignment.bottomRight,
  //     child: Container(
  //       color: Colors.red,
  //       width: 100,
  //       height: 100,
  //     ),
  //   );
  // }

  Container mainCrossAlignment(BuildContext context) {
    return Container(
      color: Colors.black,
      // column 점일경우
      // 화면 동적인 사이즈 관리 MediaQuery
      // width: MediaQuery.of(context).size.width,
      // row점일경우 테스트
      height: MediaQuery.of(context).size.height,
      child: Row(
        // 주축 정렬,
        // 시작,
        // end - 끝,
        // center - 가운데
        // spaceBetWeen - 위젯과 위젯사이에 동일하게 배치된다.
        // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도
        //                위젯이 아닌 빈 간격으로 시작한다
        // spaceAround - 위젯과 위젯의 끝과 끝의 간격은 1/2

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 반대측 정렬
        // stretch - 최대한으로 늘림
        // start - 시작
        // center - 가운데
        // end - 끝
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.amber,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.red,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.blue,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.purple,
            height: 50,
            width: 50,
          )
        ],
      ),
    );
  }

  Widget StackPositioned() {
    return Stack(
      children: <Widget>[
        // Container(
        //   color: Colors.yellow,
        //   width: double.infinity,
        //   height: double.infinity,
        // ),
        Positioned(
          top: 50.0,
          left: 20.0,
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
            child: Center(
              child: Text('Top Left'),
            ),
          ),
        ),
        Positioned(
          top: 120.0,
          left: 80.0,
          child: Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
            child: Center(
              child: Text('Bottom Right'),
            ),
          ),
        ),
        Positioned(
          top: 80.0,
          left: 50.0,
          child: Container(
            color: Colors.green,
            width: 100.0,
            height: 100.0,
            child: Center(
              child: Text('Middle Right'),
            ),
          ),
        ),
      ],
    );
  }

// stack에는 positioned 위젯 사용이 권장
// margin 속성만으로 위치를 조절하면 원하는 위치에 정확하게 배치되지 않을 수 있음

  Widget StackMargin() {
    return Container(
        child: Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: EdgeInsets.only(bottom: 50, right: 50),
          child: Center(child: Text('StackMargin')),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          margin: EdgeInsets.only(top: 80, right: 100),
          child: Center(child: Text('StackMargin')),
        ),
        // Container(
        //   width: 100,
        //   height: 100,
        //   color: Colors.amber.shade900,
        //   margin: EdgeInsets.only(bottom: 150, right: 150),
        // ),
      ],
    ));
  }

  // Widget StackMargined() {
  //   return Stack(
  //     children: [
  //       Container(
  //         re
  //       )
  //     ],
  //   )
  // }
}
