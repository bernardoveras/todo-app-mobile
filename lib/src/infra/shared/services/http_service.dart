import 'dart:io';
import 'package:dio/dio.dart';
import 'package:todo_app/src/common/user.dart';

abstract class HttpService{

  static Future<Response> get(String endPoint) async {
  var url = 'https://10.0.2.2:5001/$endPoint';
  try {
  Response response = await Dio().get(
    url,
    options: Options(
      headers: {HttpHeaders.authorizationHeader: "Bearer ${user.token}"},
    ),
  );
  return response;
  } catch (e) {
    print(e);
    return Response(statusMessage: "Ocorreu um erro na requisição.");
  }
}

static Future<Response> post(String endPoint, dynamic data) async {
  var url = 'https://10.0.2.2:5001/$endPoint';
  try {
    Response response = await Dio().post(
      url,
      data: data,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: "Bearer ${user.token}"},
      ),
    );
    return response;
  } catch (e) {
    print(e);
    return Response(statusMessage: "Ocorreu um erro na requisição.");
  }
}

static Future<Response> put(String endPoint, dynamic data) async {
  var url = 'https://10.0.2.2:5001/$endPoint';
  try {
    Response response = await Dio().put(
      url,
      data: data,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: "Bearer ${user.token}"},
      ),
    );
    return response;
  } catch (e) {
    print(e);
    return Response(statusMessage: "Ocorreu um erro na requisição.");
  }
}
}