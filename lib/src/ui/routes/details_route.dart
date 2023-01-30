
import 'package:bloc_flutter/src/moleds/movie.dart';
import 'package:bloc_flutter/src/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {

  final Movie movie;

  const Details({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${movie.title}"),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade700,
        elevation: 0,
        titleTextStyle: TextStyles.boldLargeBlack,),
      body: const Text("SECOND ROUTE"),
    );
  }
}
