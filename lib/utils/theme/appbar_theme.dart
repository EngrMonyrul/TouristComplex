import 'package:flutter/material.dart';
import 'package:turistappvisaquery/utils/theme/action_theme.dart';
import 'package:turistappvisaquery/utils/theme/icon_theme.dart';
import 'package:turistappvisaquery/utils/theme/title_theme.dart';

class AppsAppbarTheme {
  AppsAppbarTheme._();

  /*-------------> Only Lite Theme Implemented <-----------*/
  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.blueGrey,
    iconTheme: AppsIconThemeData.lightIconThemeData,
    titleTextStyle: AppsTitleTheme.lightTextStyle,
    actionsIconTheme: AppsActionTheme.lightIconThemeData,
    shape: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
  );
}
