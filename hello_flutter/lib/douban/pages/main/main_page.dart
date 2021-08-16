import 'package:flutter/material.dart';
import 'package:hello_flutter/douban/model/load_data.dart';
import 'initialize_times.dart';

class GYMainPage extends StatefulWidget {
  const GYMainPage({Key? key}) : super(key: key);

  @override
  _GYMainPageState createState() => _GYMainPageState();
}

class _GYMainPageState extends State<GYMainPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: pages,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        //当你的item超过4个后，如果不设置该属性的值为fixed的话，那么tababr会自动隐藏你的文本
        type: BottomNavigationBarType.fixed,
        //bottomNavigationBar：自带点击文字有缩放效果，如果不需要则，把选中和未选中状态的文字都设置成一个大小这样文字就没有缩放效果了
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        items: items,
        onTap: (index){
          GYDataHandleTools.loadJsonData();
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
