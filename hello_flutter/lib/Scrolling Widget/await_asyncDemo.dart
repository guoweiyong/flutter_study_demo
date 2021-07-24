void dartTest() {
  print("main start");

  var result = getNetworkData().then((res) {
    print(res);
  });
  print(result);

  print("main end");
}

Future<String> getNetworkData() async {
  var result = await Future.delayed(Duration(seconds: 3), () {
    return "network data";
  });

  return "请求到的数据：" + result;
}


// Future getNetworkData() async {
//   await sleep(Duration(seconds: 3));
//   return Future((){
//     return "Hello World";
//   });
// }

// Future<String> getNetworkData() async {
//   await sleep(Duration(seconds: 3));
//   return "hello flutter";
//   // return await Future((){
//   //   sleep(Duration(seconds: 3));
//   //   print("耗时操作执行===========");
//   //   return "hello flutter";
//   //   //throw Exception("****出现异常了****");
//   // });
// }