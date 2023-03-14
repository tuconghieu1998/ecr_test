import 'package:ecr_test/core/constants/color_constants.dart';
import 'package:ecr_test/representation/widgets/list_show_filter_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarHome extends StatefulWidget {
  const TabBarHome({super.key});

  @override
  State<TabBarHome> createState() => _TabBarHomeState();
}

class _TabBarHomeState extends State<TabBarHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this); 
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: ColorPalette.textColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: ColorPalette.primaryColor,
              tabs: [
                Tab(text: "Genres",),
                Tab(text: "Rock & Roll",),
                Tab(text: "Jazz",),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 500,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListShowFilter(),
                ListShowFilter(),
                ListShowFilter(),
              ],
            ),
          )
        ],
      ),
    );
  }
}