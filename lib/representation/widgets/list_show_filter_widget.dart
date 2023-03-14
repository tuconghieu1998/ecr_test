import 'package:ecr_test/representation/widgets/show_filter_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListShowFilter extends StatefulWidget {
  const ListShowFilter({super.key});

  @override
  State<ListShowFilter> createState() => _ListShowFilterState();
}

class _ListShowFilterState extends State<ListShowFilter> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShowFilterItem(),
          SizedBox(height: 5, child: Container(color: Colors.grey,)),
          ShowFilterItem(),
          SizedBox(height: 5, child: Container(color: Colors.grey,)),
          ShowFilterItem(),
          SizedBox(height: 5, child: Container(color: Colors.grey,)),
          ShowFilterItem(),
        ],
      ),
    );
  }
}