import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        // 192.168.1.11:8000/api/post/home
        // baseUrl: 'https://supermarket14.000webhostapp.com/api/',
        baseUrl: 'http://192.168.1.11:8000/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  //!  details For Header
  // dio!.options.headers = {
  //   'Content-Type': 'application/json',
  //   // 'lang': lang,
  //   // 'Authorization': token,
  // };

  static Future<Response> getData({
    required String? url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'Authorization': token,
    };
    return await dio!.get(
      url!,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String? url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.post(
      url!,
      data: data,
      queryParameters: query,
    );
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.delete(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
