import 'package:flutter/material.dart';
import 'package:bloc_flutter/src/ui/styles/utils.dart';

class TextStyles {
  static const String ubuntu = "Ubuntu";



  static const regularSmall = TextStyle(
      fontFamily: ubuntu,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Color(0xFFDCC66A));

  static final lightSmall = extend(regularSmall, const TextStyle(fontWeight: FontWeight.w200));

  static final boldSmall = extend(regularSmall, const TextStyle(fontWeight: FontWeight.w800));

  static final boldLarge = extend(boldSmall, const TextStyle(fontSize: 24, color: Color(0xFFF5C306)));

  static final boldLargeBlack = extend(boldSmall, const TextStyle(fontSize: 24, color: Color(
      0xFF413202)));

}
