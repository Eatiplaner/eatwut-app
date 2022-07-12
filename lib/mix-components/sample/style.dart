import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

Mix style({background = Colors.green}) {
  return Mix(
    height(150),
    width(150),
    rounded(20),
    elevation(8),
    bgColor(background),
  );
}
