
import 'package:bloc_flutter/src/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import '../bottom_navigation.dart';
import '../movie_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies'),
        backgroundColor: Colors.yellow.shade700,
        elevation: 0,
        titleTextStyle: TextStyles.boldLargeBlack,),
      body: const TestWidget(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
