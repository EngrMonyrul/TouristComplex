import 'package:flutter/material.dart';
import 'package:turistappvisaquery/core/views/data_processing.dart';
import 'package:turistappvisaquery/core/views/home_page.dart';
import 'package:turistappvisaquery/utils/theme/base_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePageView(),
      theme: AppsBaseTheme.lightThemeData,
    );
  }
}
