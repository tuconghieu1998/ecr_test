import 'package:ecr_test/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/dismention_constants.dart';

class AppBarContainer extends StatefulWidget {
  const AppBarContainer({super.key});

  @override
  State<AppBarContainer> createState() => _AppBarContainerState();
}

class _AppBarContainerState extends State<AppBarContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 15), child: Text(
          "DISCOVER SHOWS",
          style: TextStyle(fontSize: 28, color: ColorPalette.textColor, fontWeight: FontWeight.bold),
          ),),
TextField(
              decoration: InputDecoration(
                hintText: "Tỉnh, thành phố, band nhạc",
                prefixIcon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.black,
                  size: kDefaultIconSize
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide.none
                )
              ),
            ),
            // GestureDetector(
            //   child: Icon(
            //     FontAwesomeIcons.filter,
            //   )
            // )

        
      ]),
    );
  }
}