import 'package:ecr_test/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.onTap, this.iconData});
  final String title;
  final Function()? onTap;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorPalette.primaryColor
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...(iconData != null ? [Icon(iconData ?? FontAwesomeIcons.cartShopping, color: Colors.white,),
        SizedBox(width: 10,)] : []),
        
Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14)
      ),
      ],) 
    ));
  }
}