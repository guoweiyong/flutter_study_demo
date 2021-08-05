import 'package:dio/dio.dart';

class GYHttpRequest  {

  //防止每次请求都创建一个新的Dio对象
  static final Dio _dio = Dio();

  /**
   * 参数后面的  ？ 作用： 表示该参数可以为null， 如果不加？ 则必须附一个默认值， 获取标记为必传参数
   */
  static Future<T> request<T>(String url, {
    String method = "get",
    Map<String, dynamic>? params,
    Interceptor? inter}) async {
    //1.创建单独配置
    final options = Options(method: method);

    //创建一个全局的拦截器
    Interceptor interceptor = InterceptorsWrapper(
        onRequest: (options, handle) {
          print("请求拦截");

          //return;
        },
        onResponse: (response, handle) {
          print("响应拦截");

          //return;
        },
        onError: (err, handle) {
          print("错误拦截");

          //return;
        }
    );
    List<Interceptor> inters = [interceptor];

    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }

    // 统一添加到拦截器中
    _dio.interceptors.addAll(inters);

    //2.发送网络请求
    try {
      Response response = await _dio.request(url,queryParameters: params,options: options);
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }
  }
}