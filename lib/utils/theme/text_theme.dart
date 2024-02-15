import 'package:flutter/material.dart';

class AppsTextTheme {
  AppsTextTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    headlineLarge:
        const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium:
        const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600),
    headlineSmall:
        const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600),
    titleLarge:
        const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
    titleMedium:
        const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),
    titleSmall:
        const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyLarge:
        const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.w500),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 15.0, fontWeight: FontWeight.normal),
    bodySmall:
        const TextStyle().copyWith(fontSize: 11.0, fontWeight: FontWeight.w500),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal),
    labelMedium: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal),
  );
}
