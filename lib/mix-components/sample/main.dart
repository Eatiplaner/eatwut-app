import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import './style.dart';

class Sample extends StatelessWidget {
  const Sample({Key? key, required this.background}) : super(key: key);

  final Color background;

  @override
  Widget build(BuildContext context) {
    return Box(
      mix: style(background: background),
    );
  }
}
