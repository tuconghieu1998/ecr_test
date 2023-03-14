import 'package:ecr_test/representation/screens/main_screens.dart';
import 'package:flutter/material.dart';

import 'core/constants/color_constants.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MainScreen(),
        theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
