

import 'package:flutter/material.dart';

TextStyle extend(TextStyle t1, TextStyle t2){
  return t1.merge(t2);
}