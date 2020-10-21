import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

import 'package:ui_design/core/base/base_service.dart';
import 'package:ui_design/utilities/httpinterceptor.dart';

import '../../apiurl.dart';

class ApiService extends BaseService {
  Dio dio = new Dio();
  ApiService() {
    initializeDio();
  }

  void initializeDio() {
    dio.interceptors.add(DioCacheManager(CacheConfig(
      baseUrl: BASE_URL,
      defaultMaxAge: Duration(minutes: 5),
    )).interceptor);

    dio.interceptors.add(LoggingInterceptors());
  }
  getSigninResponse(String fname,String lname,String email,String phoneno,String zipcode,String password) async {
Map<String, String> body = {
    "email":email,
    "phoneNumber":phoneno,
    "firstName":fname,
    "lastName":lname,
    "password":password,
    "zipCode":zipcode,
};
     try {
      Response<String> response = await dio.post(signUp,data:body,options: Options(headers: {"Content-Type":"application/json"}));
      print(response.data);
      return response.data;
    } catch (e) {
      return e.toString();
    }

  }
}
