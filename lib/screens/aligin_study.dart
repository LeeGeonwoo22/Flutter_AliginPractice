import "package:flutter/material.dart";

class aliginScreen extends StatelessWidget {
  const aliginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child:
          // mainCrossAlignment(context)),
          aliginExample(),
    ));
  }

  Align aliginExample() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }

  Container mainCrossAlignment(BuildContext context) {
    return Container(
      color: Colors.black,
      // column 점일경우
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
}
