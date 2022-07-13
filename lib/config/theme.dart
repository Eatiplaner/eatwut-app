import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      primaryColor: Colors.blue[600],
      brightness: Brightness.light,
      backgroundColor: Colors.black,
    );

ThemeData get darkTheme => ThemeData(
      primaryColor: Colors.blue[300],
      brightness: Brightness.dark,
      backgroundColor: Colors.white,
    );
