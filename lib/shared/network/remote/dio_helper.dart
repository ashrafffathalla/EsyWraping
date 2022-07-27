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

  static Future<Response> getData({
    required String methodUrl,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZGZiYTNmNTBiMWI3NzBjZjBkNjRjNjI0M2RhNmUyZWUyMjJlN2E5ZDFiNDNlZjlmNDkwODllOWM0ZDNmN2QyNjdlOGU0ZTM2YzJkODczNGUiLCJpYXQiOjE2NTUwMjM1MjYuNzIwMzMxLCJuYmYiOjE2NTUwMjM1MjYuNzIwMzM0LCJleHAiOjE2ODY1NTk1MjYuNzE3NjI3LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.obPM-5dZfgecNKjAgP9FmTsGAGxbCNGbbTP3TErBu8yy7bQ9LxWK2ej-2at_p1PqpyZ6zUgE6af9GJh44jBZT1XnkWXT5g6J2-8_uwxb2XBXm1kr7qK9k2fQdMLGwdc4u1sIwFtk6c_vQK1m_RL_hIUBbM6T8mGZsY3Am4bcksO8xa-lJLXJncwjpXilUnrFvJ70fUAvgNO102ReTRwfKSg6L9f1RJS6dLj_-3Ki5yb8XRy6DItq_6fq2Lb6a8Awe8iGPkjWZqrjyQpQPyS8EUt50QYgZqZNEsgQwI3yRHqDFTfx98EK7XNMwNju7YNXELABchRPYuG2nAixe3XSib1NU1LM-l0DP3kurhhWsXeYAbPNjgwEwoC6IotyVqvqGo-8qctl7gTwAi-_h53IeK2mQnBMLn7zI8VnSArbaZ207xeuIaX5gRqvaT6viVycWUrt-M7v95rsjXVSpCtAPyHHZ26TMNDCUwN24Dwg5YXwUS-Yrk6lszAqLoasaj1LbO_4qK1lR6BDhen-qXSegM54796IdqqOeRWr-B0k7VdYXM4EzskmBWOR9paRNNhubhtJBkGZ4iqTAuQoYbQusuSV59Oq28tWBrWytO0LREz9gfD4ywkPfI3c5V690x3p6fSkQNwdmJWA6JvwdNq6A9zJKYlSHbv05_vdAyskOAk",
    };
    return await dio.get(methodUrl, queryParameters: query);
  }

  static Future<Response> postData(
      {required String methodUrl, required Map<String, dynamic> data}) async {
    dio.options.headers = {
      "Content-Type": 'application/json',
      "Authorization": 'Bearer $sharedToken',
    };
    return await dio.post(
      methodUrl,
      data: data,
    );
  }
}

// ليه الصور صغيره؟??
// روح على الكيرسور
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
