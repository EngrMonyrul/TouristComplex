import 'package:flutter/material.dart';
import 'package:turistappvisaquery/utils/theme/appbar_theme.dart';
import 'package:turistappvisaquery/utils/theme/card_theme.dart';
import 'package:turistappvisaquery/utils/theme/text_theme.dart';

class AppsBaseTheme {
  AppsBaseTheme._();

  /*-------------> Only Lite Theme Implemented <-----------*/
  static final ThemeData lightThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.orange,
    appBarTheme: AppsAppbarTheme.lightAppBarTheme,
    textTheme: AppsTextTheme.lightTextTheme,
    cardTheme: AppsCardTheme.lightCardTheme,
    colorScheme: const ColorScheme.light(
      primary: Colors.blueGrey,
      secondary: Colors.orange,
      error: Colors.red,
      background: Colors.white,
    ),
  );
}
