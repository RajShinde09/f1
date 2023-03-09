import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fister/themes/textTheme.dart';

class pApptheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: ptextTheme.lighttextTheme,
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: ptextTheme.darktextTheme,
  );

}
