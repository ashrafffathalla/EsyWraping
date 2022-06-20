import 'package:dio/dio.dart';

import '../../constance/constant.dart';

class DioHelper {

  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://api.easywrapping.com/',
        receiveDataWhenStatusError: true,
      ),
    );
  }
  static Future<Response> getData(

      {required String methodUrl,
        Map<String, dynamic> ? query,}) async {

    dio.options.headers = {
      "Content-Type":"application/json",
      "Authorization": "Bearer $sharedToken",
    };
    return await dio.get(methodUrl, queryParameters: query);
  }

  static Future<Response> postData(
      {required String methodUrl,

        required Map<String, dynamic>  data}) async {
    dio.options.headers = {
      "Content-Type":"application/json",
      "Authorization": "Bearer $sharedToken",
    };
    return await dio.post(
      methodUrl,
      data: data,
    );
  }
}
/**
class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    print("onRequest");
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(Response response,ResponseInterceptorHandler handler) async{
    print("onResponse");

  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    print("onError: ${err.response!.statusCode}");
    return handler.next(err);  // <--- THE TIP IS HERE
  }
}
*/