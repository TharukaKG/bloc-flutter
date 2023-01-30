import 'package:bloc_flutter/src/ui/bottom_navigation.dart';
import 'package:bloc_flutter/src/ui/movie_list.dart';
import 'package:bloc_flutter/src/ui/routes/home_route.dart';
import 'package:bloc_flutter/src/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home()
    );
  }
}
