

import 'package:bloc_flutter/src/resources/calls/movies_client.dart';
import 'package:bloc_flutter/src/resources/repositories/base_repository.dart';
import 'package:bloc_flutter/src/resources/responses/movies_response.dart';

class MovieRepository extends BaseRepository{

  Future<MovieResponse?> getMovies() async{

    return  safeApiCall(MoviesClient().getMovies, MovieResponse.fromJson, "Something went wrong while getting movies");

  }
}