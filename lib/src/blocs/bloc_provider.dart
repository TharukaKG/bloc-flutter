import 'package:bloc_flutter/src/blocs/bloc.dart';
import 'package:flutter/material.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget {
  final Widget child;
  final T block;

  BlocProvider({Key? key, required this.block, required this.child});

  static T of<T extends Bloc>(BuildContext context){
    final BlocProvider<T> provider = context.findAncestorWidgetOfExactType()!;
    return provider.block;
  }

  @override
  State<StatefulWidget> createState()  => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider>{
  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    widget.block.dispose();
    super.dispose();
  }

}
