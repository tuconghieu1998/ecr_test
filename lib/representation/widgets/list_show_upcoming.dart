import 'package:ecr_test/core/constants/color_constants.dart';
import 'package:ecr_test/representation/widgets/show_horizontal_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListShowUpComing extends StatefulWidget {
  const ListShowUpComing({super.key});

  @override
  State<ListShowUpComing> createState() => _ListShowUpComingState();
}

class _ListShowUpComingState extends State<ListShowUpComing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: 
          Text("Sắp diễn ra", style: TextStyle(fontSize: 24, color: ColorPalette.textColor, fontWeight: FontWeight.bold)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            children: [
              SizedBox(width: 15),
              ShowHorizontalItem(),
              ShowHorizontalItem(),
              ShowHorizontalItem(),
              ShowHorizontalItem(),
              ShowHorizontalItem(),
              SizedBox(width: 15),
            ],
          ),
          ),
          
        ],
      ),
    );
  }
}