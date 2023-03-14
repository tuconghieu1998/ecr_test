import 'package:ecr_test/core/helpers/asset_helper.dart';
import 'package:ecr_test/core/helpers/image_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, this.size});
  final double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ImageHelper.loadFromAsset(AssetHelper.avatar, width: size ?? 48, height: size ?? 48, radius: BorderRadius.circular(48)),
    );
  }
}