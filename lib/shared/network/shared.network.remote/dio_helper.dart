import 'package:dio/dio.dart';

class DioHelper{
  static var dio;

  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        // baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
        // headers: {
        //   'Content-Type':'application/json',
        // },
      ),
    );
  }
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
//    required dynamic query,
    String lang='en',
    String? token,
})async
  {
    dio.options.headers={
      'lang':lang,
      'Content-Type':'application/json',
      'Authorization':token??'',
    };
    return await dio.get(url,queryParameters:query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String,dynamic> data,
    String lang='en',
    String? token,
  })async
  {
    dio.options.headers={
      'lang':lang,
      'Content-Type':'Application/json',
      'Authorization':token??'',
    };
    return await dio.post(url,queryParameters:query,data:data);
  }
}


