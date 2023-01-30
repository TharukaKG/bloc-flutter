
import 'package:bloc_flutter/src/moleds/movie.dart';
import 'package:bloc_flutter/src/ui/routes/details_route.dart';
import 'package:bloc_flutter/src/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AspectRatio(
          aspectRatio: 16 / 9,
            child: Stack(
              fit: StackFit.expand,
              children: [
                image(context), // backdrop image
                gradient(), // backdrop image gradient
                infoContainer(), // movie info
                onTapItem(context)
              ],
          ),
        ),
      ),
    );
  }

  Widget onTapItem(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Details(movie: movie)));},
    );
  }

  Widget image(BuildContext context) {
    return Image.network(
      "${movie.imageBaseUrl}${movie.backdropPath}",
      fit: BoxFit.fill,
    );
  }

  Widget gradient() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.centerLeft,
              end: FractionalOffset.centerRight,
              colors: [Colors.transparent, Colors.black87])),
    );
  }

  Widget infoContainer() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          titleText(),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              infoText("Vote Count", movie.voteCount.toString()),
              const SizedBox(width: 16,),
              infoText("Popularity", movie.popularity.toString())
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          infoText("Language", movie.originalLanguage.toString())
        ],
      ),
    );
  }

  Widget titleText() {
    return Text(movie.title ?? "", style: TextStyles.boldLarge);
  }

  Widget infoText(String title, String info) {
    return RichText(
        text: TextSpan(
            text: title,
            style: TextStyles.boldSmall,
            children: <TextSpan>[
          const TextSpan(text: '\n'),
          TextSpan(text: info, style: TextStyles.lightSmall)
        ]));
  }
}
