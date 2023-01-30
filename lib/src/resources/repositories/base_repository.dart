import 'dart:convert';

import 'package:bloc_flutter/src/resources/responses/base_response.dart';
import 'package:bloc_flutter/src/resources/responses/movies_response.dart';
import 'package:http/http.dart' as http;

class BaseRepository {

  Future<T?> safeApiCall<T>(Future<http.Response> Function() call, T Function(Map<String, dynamic>) parser, String error) async {
    try {
      final callResult = await apiOutput(call, parser, error);
      return callResult.res;
    } on Exception catch (exception) {
      print("error:::$exception");
      return null;
    }
  }

  Future<Output> apiOutput<T>(Future<http.Response> Function() call, T Function(Map<String, dynamic>) parser, String error) async {
    return call().then((response){
      if(response.statusCode==200){
        return Output.success(MovieResponse.fromJson(jsonDecode(response.body)));
      }else{
        return Output.error(error);
      }
    });
  }

}
