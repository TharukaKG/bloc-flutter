import 'package:bloc_flutter/src/blocs/bloc_provider.dart';
import 'package:bloc_flutter/src/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:bloc_flutter/src/blocs/movies_block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoviesBlock>(block: MoviesBlock(), child: const App());
  }
}

