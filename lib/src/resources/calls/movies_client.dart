

import 'package:bloc_flutter/src/blocs/bloc.dart';
import 'package:http/http.dart' as http;

class MoviesClient{

  Future<http.Response> getMovies() async => await http.get(Uri.parse('http://api.themoviedb.org/3/movie/popular?api_key=04844d9eaf0328d6a98a59522861b157'));

}