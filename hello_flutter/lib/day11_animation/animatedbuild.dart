import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: GYHomePage(),
    );
  }
}

class GYHomePage extends StatefulWidget {
  @override
  _GYHomePageState createState() => _GYHomePageState();
}

/**
 * 创建动画必须是继承自 StatefulWidget
 * 首先创建AnimationController 需要混入SingleTickerProviderStateMixin 类
 */
class _GYHomePageState extends State<GYHomePage> with SingleTickerProviderStateMixin {
  //创建AnimationController
  AnimationController? _animationController; //必须要被初始化 或则定义可选类型
  CurvedAnimation? _curvedAnimation;
  Animation? _sizeAnimation; //大小动画


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //1.创建AnimationController
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));

    //2.设置Curved的值，（例如： 匀速，一些效果）
    _curvedAnimation = CurvedAnimation(parent: _animationController!, curve: Curves.linear);

    //3.设置Tween （作用： 设置动画的改变值大小， 因为默认情况下AnimationController的动画值是【0.0，1.0】如果你想使用别的值，必须使用Tween）
    // Tween(begin: 50, end: 150) 这个两个值的类型是T 也就是泛型，但是实际我们需要是double类型，这些写50默认是Int类型，所以这里需要些50.0
    _sizeAnimation = Tween(begin: 50.0, end: 150.0).animate(_curvedAnimation!); //把值和动画关联起来

    //监听动画执行状态
    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController!.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController!.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("_GYHomePageState-===========build方法执行");
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController!,
          builder: (ctx, child) {
            return Icon(Icons.favorite, size: _sizeAnimation!.value,color: Colors.red,);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_outline),
        onPressed: () {
          print("播放动画按钮点击事件=======");
          if (_animationController!.isAnimating) {
            _animationController!.stop();
          } else {
            if (_animationController!.status == AnimationStatus.forward) {
              /*开始动画*/
              _animationController!.forward();
            } else if (_animationController!.status == AnimationStatus.reverse) {
              /*开始动画*/
              _animationController!.reverse();
            } else {
              /*开始动画*/
              _animationController!.forward();
            }
          }
        },
      ),
    );
  }
  @override
  void dispose() {
    _animationController!.dispose();
    // TODO: implement dispose
    super.dispose();

  }
}
