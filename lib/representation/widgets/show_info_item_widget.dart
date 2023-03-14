import 'package:ecr_test/core/constants/textstyle_contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowInfoItem extends StatelessWidget {
  const ShowInfoItem({super.key, this.iconData, this.text});

  final IconData? iconData;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(iconData ?? FontAwesomeIcons.locationDot, size: 16, color: Colors.grey,),
          SizedBox(width: 5,),
          Text(text ?? "", style: TextStyles.subText,)
        ]
      ),
    );
  }
}