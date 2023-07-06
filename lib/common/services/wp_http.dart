import 'package:dio/dio.dart';
import 'package:flutter_project_learn/common/services/wp_interceptor.dart';
import 'package:flutter_project_learn/common/values/constants.dart';
import 'package:get/get.dart' hide Response ;
class WPHttpService extends GetxService{
  static WPHttpService get to => Get.find();
  late final Dio _dio;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // 初始 dio
    var options = BaseOptions(
      baseUrl: Constants.wpApiBaseUrl,
      connectTimeout: 10000, // 10秒
      receiveTimeout: 5000, // 5秒
      headers: {},
      contentType: 'application/json; charset=utf-8',
      responseType: ResponseType.json,
    );
    _dio = Dio(options);

    // 拦截器
    _dio.interceptors.add(RequestInterceptors());
  }
  Future<Response> get(
      String url, {
        Map<String, dynamic>? params,
        Options? options,
        CancelToken? cancelToken,
      }) async {
    Options requestOptions = options ?? Options();
      Response  response = await _dio.get(
      url,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  Future<Response> post(
      String url, {
        dynamic data,
        Options? options,
        CancelToken? cancelToken,
      }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.post(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  Future<Response> put(
      String url, {
        dynamic data,
        Options? options,
        CancelToken? cancelToken,
      }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.put(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  Future<Response> delete(
      String url, {
        dynamic data,
        Options? options,
        CancelToken? cancelToken,
      }) async {
    var requestOptions = options ?? Options();
    Response response = await _dio.delete(
      url,
      data: data ?? {},
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }
}
