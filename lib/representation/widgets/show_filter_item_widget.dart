import 'package:ecr_test/core/constants/textstyle_contants.dart';
import 'package:ecr_test/core/helpers/asset_helper.dart';
import 'package:ecr_test/core/helpers/image_helper.dart';
import 'package:ecr_test/representation/widgets/avatar_widget.dart';
import 'package:ecr_test/representation/widgets/button_widget.dart';
import 'package:ecr_test/representation/widgets/show_info_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowFilterItem extends StatefulWidget {
  const ShowFilterItem({super.key});

  @override
  State<ShowFilterItem> createState() => _ShowFilterItemState();
}

class _ShowFilterItemState extends State<ShowFilterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AvatarWidget(
                    size: 32,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1900 LE HANOI")
                ],
              ),
              SizedBox(height: 10),
              Container(
                child: ImageHelper.loadFromAsset(AssetHelper.largeBanner,
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.fitWidth,
                    radius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Title",
                  style: TextStyles.titleStyle.copyWith(fontSize: 24),
                ),
              ),
              Text(
                "Decriptions",
                style: TextStyles.subText,
              ),
              Container(
                height: 1,
                color: Colors.blueGrey,
              ),
              Row(children: [
                Container(
                  height: 80,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ShowInfoItem(
                      iconData: FontAwesomeIcons.locationDot,
                      text: "Yoko Cafe Dalat",
                    ),
                    ShowInfoItem(
                      iconData: FontAwesomeIcons.clock,
                      text: "19:30 - 24:00 PM",
                    ),
                    ShowInfoItem(
                      iconData: FontAwesomeIcons.calendarCheck,
                      text: "24/03/2022",
                    ),
                  ],
                ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(top: 15), 
                child: Row(children: [
                Expanded(
                  flex: 6,
                  child: ButtonWidget(title: "Đặt vé ngay", iconData: FontAwesomeIcons.cartShopping,),
                ),
                SizedBox(width: 20,),
                Expanded(
                  flex: 4,
                  child: ButtonWidget(title: "Thích", iconData: FontAwesomeIcons.heart),
                ),
              ],)
              )
              
              
            ],
          )),
    );
  }
}
