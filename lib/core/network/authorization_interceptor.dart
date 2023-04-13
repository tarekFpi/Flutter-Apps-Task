import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class AuthorizationInterceptor extends Interceptor {

  final storage = GetStorage();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer ${"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI3OCIsIkN1cnJlbnRDb21JZCI6IjEiLCJuYmYiOjE2ODEyMDcxNDQsImV4cCI6MTY4MTgxMTk0NCwiaWF0IjoxNjgxMjA3MTQ0fQ.UWdxlq2vEB4IDn4XlfWQh5fx27E7IyiFijlBgqO-bO0"}';
    // continue with the request
    super.onRequest(options, handler);
  }
}