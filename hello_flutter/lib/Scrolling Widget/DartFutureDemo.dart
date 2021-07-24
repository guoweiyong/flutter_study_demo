import 'dart:io';

void dartTest() {
  Future<String>.delayed(Duration(seconds: 3), () {
    return "Hello Flutter";
  }).then((res) {
    print(res);
    return "Hello World";
  }).then((res) {
    print(res);
  });

  // print("main function start");
  //
  // Future.delayed(Duration(seconds: 3), () {
  //   return "3秒后的信息";
  // }).then((value) {
  //   print(value);
  // });
  //
  // print("main function end");


  // print("main function start");
  //
  // Future.error(Exception("错误信息")).catchError((error) {
  //   print(error);
  // });
  //
  // print("main function end");




  // print("main function start");
  //
  // Future.value("哈哈哈").then((value) {
  //   print(value);
  // });
  //
  // print("main function end");


  // print("main start");
  // Future(() {
  //   //第一次网路请求
  //   sleep(Duration(seconds: 3));
  //   return "first result";
  //   //throw Exception("****出现异常了****");
  // }).then((value) {
  //   //第二次网络请求
  //   sleep(Duration(seconds: 2));
  //   print("第一次请求的结果====$value");
  //   return "second result";
  // }).then((value) {
  //   //第三次网络请求
  //   sleep(Duration(seconds: 1));
  //   print("第二次请求的结果======$value");
  //   return "third result";
  // }).then((value) {
  //   print("获取第三次的最终返回结果======$value");
  // });
  //
  // print("main END");
}

Future<String> getNetworkData() {
  return Future((){
    sleep(Duration(seconds: 3));
    print("耗时操作执行===========");
    //return "hello flutter";
    throw Exception("****出现异常了****");
  });
}