import 'package:flutter/material.dart';

class AppsCardTheme {
  AppsCardTheme._();

  static CardTheme lightCardTheme = CardTheme(
    color: Colors.blueGrey,
    elevation: 0,
    shape: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
  );
}
