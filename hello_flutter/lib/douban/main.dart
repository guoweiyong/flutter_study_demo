import 'package:flutter/material.dart';
import 'widget/start_rating.dart';

//main函数作为程序的入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("滑动监听"),
          ),
          body: GYStartRating(rating: 6.5,)
        )
    );
  }
}


