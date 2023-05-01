import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'appbarMenu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('AppBar Icon Menu',),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0.0,
        // 긴딘힌 위젯이나 아이콘등을 앱바타이틀 왼쪽에 위치시킴
        // 메뉴 아이콘 만들기
        leading: IconButton( // add require onPressed
          icon: Icon(Icons.menu),
          onPressed:  () {
            print("menu button is clicked");
          }, // 버튼실행시 반환값이 없는 함수 실행
        ),
        // Column과 row의 children처럼 actions Argument는 한 개 이상의 위젯 리스트 가짐
        // 앱바에서는 주로 아이콘 버튼 위젯들이 옴(검색과 쇼핑카트 아이콘)
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("shopping cart button is clicked");
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search button is clicked");
            },
          )

        ],
      ),
    );
  }
}