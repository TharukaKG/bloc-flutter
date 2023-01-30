import 'package:bloc_flutter/src/blocs/bloc.dart';
import 'package:bloc_flutter/src/moleds/movie.dart';
import 'package:bloc_flutter/src/resources/repositories/movie_repository.dart';

class MoviesBlock implements Bloc {
  final MovieRepository _movieRepository = MovieRepository();

  Stream<List<Movie>?> getMovies() {
    final movies = _movieRepository.getMovies().then((value){
      return value?.results;
    });
    return Stream.fromFuture(movies);
  }

  @override
  void dispose() {
    print("disposed");
  }
}
