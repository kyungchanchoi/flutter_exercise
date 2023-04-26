import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Character Page Design',
        home: const Grade()
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title:const Text('Character Page'),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          elevation: 0.0,
        ),
        body:Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
            child : Column(
              // crossAxisAlignment : 가로축 정렬
              crossAxisAlignment: CrossAxisAlignment.start, // mainAxisAlignment와 상반됨
              children: <Widget>[
                // 플러터 프레임워크가 제공하는 위젯 : 이미지를 원 안에 넣어준다
                const Center( // wrap with Center
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/cat1.gif'), // 이미지 경로 입력
                    radius: 60.0, // 원의 크기를 조절
                  ),
                ),

                // 구분을 위한 선 위젯
                Divider(
                  height: 60.0, // Divider의 위 아래의 간격의 합. 즉 선 위로 30픽셀, 아래로 30픽셀
                  color: Colors.grey[850], // 선의 색
                  thickness: 0.5,   // 선의 두깨
                  endIndent: 30.0,  // 선의 끝이 스크린 끝과 얼마나 떨어져야 하는지 입력
                  // 초반 패딩 위젯의 입력값만큼 조절
                ),

                const Text('Name',
                  style: TextStyle( // TextStyle : 텍스트에 관한 다양한 디자인.
                    color: Colors.white, // 텍스트 색상
                    letterSpacing: 2.0, // 철자간의 간격
                  ),
                ),

                const SizedBox( // SizedBox : 첫번째와 두번째 텍스트 사이의 간격을 조절하기 위해 놓는 빈 공간
                  // 두가지 속성을 가지고 있다.
                  height: 10.0,
                  width: 0.0,
                ),

                const Text('CUTE CAT',
                  style: TextStyle(
                    color:Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0, // 글자 크기
                    fontWeight: FontWeight.bold, // 글자의 굵기 : 볼드체로
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                  width: 0.0,
                ),

                const Text('Character Power Level',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                  width: 0.0,
                ),

                const Text('14',
                  style: TextStyle(
                    color:Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                  width: 0.0,
                ),

                Row( // 가로로 나열
                  children: const <Widget>[
                    Icon(Icons.check_circle_outline), // . 은 위젯이 가지고있는 여러 속성이나 기능, 관련 아이템중 하나를 선택할 때 사용
                    SizedBox(
                      height: 0.0,
                      width: 10.0,
                    ),
                    Text('Using cute attack',
                      style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0

                      ),
                    ),
                  ],
                ),

                Row(
                  children: const <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      height: 0.0,
                      width: 10.0,
                    ),
                    Text('Cat hair burst',
                      style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0

                      ),
                    ),
                  ],
                ),

                Row(
                  children: const <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      height: 0.0,
                      width: 10.0,
                    ),
                    Text('Fire Breath',
                      style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0

                      ),
                    ),
                  ],
                ),

                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/cat2.jpg'),
                    radius: 40.0,
                    // backgroundColor: Colors.amber[800], // 투명배경시 색 설정
                  ),
                )

              ],
            )
        )
    );
  }
}