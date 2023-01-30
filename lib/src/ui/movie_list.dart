
import 'package:bloc_flutter/src/blocs/bloc_provider.dart';
import 'package:bloc_flutter/src/blocs/movies_block.dart';
import 'package:bloc_flutter/src/moleds/movie.dart';
import 'package:bloc_flutter/src/ui/movie_item.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {

  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.of<MoviesBlock>(context);

    return StreamBuilder<List<Movie>?>(
      stream: bloc.getMovies(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Container(
            color: Color(0xFF262523),
            child: ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index){
                return MovieItem(movie: snapshot.data![index],);
              }
            ),
          );
        }else{
          return const Center(child: Text("data:::No data"));
        }
      }
    );
  }
}
