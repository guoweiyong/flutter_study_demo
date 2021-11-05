
import 'dart:ui';

class GYSizeFit  {
  double phySicalWidth = 0;
  double phySicalHeight = 0;

  double screenWidth = 0;
  double screenHeight = 0;

  double dpr = 0;
  double px = 0;

  double statusBarHeight = 0;
  double bottomHeight = 0;

  //初始化
  static void initialize() {

  }
  //工厂方法构造函数
  factory GYSizeFit() => _getInstance();

  //instance的getter方法
  static GYSizeFit get instance => _getInstance();

  //静态变量 _instace, 存储唯一对象
  // 这里必须要使用？ 声明可选值， 不然不可以赋值null
  static GYSizeFit? _instance = null;

  //获取对象
  static GYSizeFit _getInstance() {
    if (_instance == null) {
      //使用私有构造方法来创建对象
      _instance = GYSizeFit._internal();
    }

    return _instance!;
  }

   //私有的命名构造法方法 ,默认的构造方法将失效， 这样就隐藏了构造方法
  //子类不能继承internal
  //不是关键字，可定义其它名字
  GYSizeFit._internal() {
    // 初始化
    //分辨率
    phySicalWidth = window.physicalSize.width;
    phySicalHeight = window.physicalSize.height;

    // 屏幕宽高
    screenWidth = window.physicalSize.width / window.devicePixelRatio;
    screenHeight = window.physicalSize.height / window.devicePixelRatio;

    //这里是以iphone6 为模板来适配的
    dpr = screenWidth/750 ; // 像素点适配
    px = screenWidth/750 * 2; // 物理宽度适配

    //导航栏和底部工具栏的高度
    statusBarHeight = window.padding.top;
    bottomHeight = window.padding.bottom;
  }
}

//给double写一个分类
extension sizeFit on double {
  //使用像素适配大小
  // double dpx() {
  //   return this * GYSizeFit.instance.dpr;
  // }
  //
  // // 使用px（物理宽度适配）
  // double px() {
  //   return this * GYSizeFit.instance.px;
  // }

  // 调用方法200.0.px(),但是发现后面跟着一个（） 不方便我们可以把（）去掉
  double get px {
    return this * GYSizeFit.instance.px;
  }

  double get dpx {
    return this * GYSizeFit.instance.dpr;
  }
}