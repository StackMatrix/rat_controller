import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;

import '/utils/utils.dart';
import 'config.dart';

class ConnectRequest {
  ConnectRequest._privateConstructor();
  static final ConnectRequest _instance = ConnectRequest._privateConstructor();
  static ConnectRequest get instance => _instance;

  static final Meteor _meteor = Meteor.instance;
  late final AppGlobalConfig _appGlobalConfig = AppGlobalConfig.instance;

  // 配置 Dio 实例
  late final BaseOptions _options = BaseOptions(
    baseUrl: _appGlobalConfig.serverAddress,
    connectTimeout: 5000,
    receiveTimeout: 5000,
    sendTimeout: 2500,
  );

  // 创建 Dio 实例
  late final Dio _dio = Dio(_options);

  // _request 是核心函数，所有的请求都会走这里
  Future<T> _request<T>(String path, {String? method, Map? params, jwtEnable, formEnable, data, popDialog}) async {
    debugPrint('路径：$path 发送的数据为： $data');

    if (params != null) {    // restful 请求处理
      params.forEach((key, value) {
        if (path.contains(key)) {
          path = path.replaceAll(":$key", value.toString());
        }
      });
    }

    // 加载动画
    if (popDialog == true) _meteor.loadingAnimate();

    // 显示指定Map的限定类型 动态添加headers
    if(jwtEnable == true){
      String jwtToken = _meteor.getStorage.read('jwtToken').toString();

      _dio.options.headers.addAll(Map<String,String>.from({"Authorization": "Bearer $jwtToken",}));
      debugPrint("Authorization Bearer 为：${_dio.options.headers}");
    }

    try {
      var response = await _dio.request(path,
        data: formEnable == true ? dio.FormData.fromMap(data) : data,
        options: Options(method: method,), // contentType: Headers.jsonContentType,
        onSendProgress: (int progress, int total) async {},
      );

      if (popDialog == true ) Get.back(); // 关闭动画

      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint('返回的数据: ${response.data}');

        return response.data;
      } else {
        return Future.error('HTTP错误');
      }
    } on DioError catch (e) {
      if (popDialog == true ) Get.back(); // 关闭动画
      return Future.error(_dioError(e));
    }
  }

  // 处理 Dio 异常
  static String _dioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return "网络连接超时，请检查网络设置";
      case DioErrorType.receiveTimeout:
        return "服务器异常，请稍后重试！";
      case DioErrorType.sendTimeout:
        return "网络连接超时，请检查网络设置";
      case DioErrorType.response:
        return "服务器异常，请稍后重试！";
      case DioErrorType.cancel:
        return "请求已被取消，请重新请求";
      case DioErrorType.other:
        return "网络异常，请稍后重试！";
      default:
        return "Dio异常";
    }
  }

  Future<T> get<T>(String path, {Map? params, jwtEnable, formEnable, data, popDialog}) {
    return _request(path, method: 'get', params: params, jwtEnable: jwtEnable, formEnable: formEnable ,data: data, popDialog: popDialog);
  }

  Future<T> post<T>(String path, {Map? params, jwtEnable, formEnable, data, popDialog}) {
    return _request(path, method: 'post', params: params, jwtEnable: jwtEnable, formEnable: formEnable ,data: data, popDialog: popDialog);
  }

}