import 'package:ecr_test/representation/widgets/app_bar_container_widget.dart';
import 'package:ecr_test/representation/widgets/list_show_upcoming.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

    static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(height: 150,),
                ListShowUpComing()
              ],
            ),
          ),
          AppBarContainer(),
        ],)
      ),
    );
  }
}