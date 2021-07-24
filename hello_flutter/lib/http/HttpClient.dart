import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

/**
 * 网络请求
 */
void requestNetwotk() async {
  //1. 创建HttpClient的请求实例
  final httpClient = HttpClient();

  //2.构建请求的URI
  // https://httpbin.org/get
  // http://123.207.32.32:8000/api/v1/recommend
  // https://httpbin.org/post
  final uri = Uri.parse("https://httpbin.org/get");

  //3.构建请求 返回值类型是 Future<HttpClientRequest> 是一个未来的对象，使用await之后可以使用HttpClientRequest类型来接收
  HttpClientRequest request = await httpClient.getUrl(uri);//get请求
  //final request = await httpClient.postUrl(uri);//post请求

  //4.发送请求
  HttpClientResponse response = await request.close();

  //判断请求结果
  if (response.statusCode == HttpStatus.ok) {
    //打印成功结果
    print(await response.transform(utf8.decoder).join());
  } else {
    print(response.statusCode);
  }

  //关闭HttpClient
  httpClient.close();
}

/*使用http第三方库来进行网络请求*/
void requestNeteorkThridHttp() async {
  // 1.创建Client
  final client = http.Client();

  // 2.构建uri
  final url = Uri.parse("http://123.207.32.32:8000/api/v1/recommend");

  // 3.发送请求
  final response = await client.get(url);

  // 4.获取结果
  if (response.statusCode == HttpStatus.ok) {
    print(response.body);
  } else {
    print(response.statusCode);
  }
}
