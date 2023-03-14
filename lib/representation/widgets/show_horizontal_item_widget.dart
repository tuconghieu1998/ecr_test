import 'package:ecr_test/core/helpers/asset_helper.dart';
import 'package:ecr_test/core/helpers/image_helper.dart';
import 'package:ecr_test/representation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShowHorizontalItem extends StatelessWidget {
  const ShowHorizontalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
            ),
            child: Stack(
              children: [
                ImageHelper.loadFromAsset(AssetHelper.Slide1),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Row(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4),
                                    child: Text(
                                      "24/03/2022 | 19:30 - 24:00 PM",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bức tường Band",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Nhà hát lớn Hà Nội"),
                                        ],
                                      ),
                                    
                                    ],
                                  ),
                                ]),
                          ],
                        ))),
              ],
            )));
  }
}
