import 'package:ecr_test/representation/screens/home_screen.dart';
import 'package:ecr_test/representation/screens/main_screens.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  MainScreen.routeName: (context) => const MainScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};