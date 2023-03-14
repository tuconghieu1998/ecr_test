import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color_constants.dart';

class TextStyles {
  TextStyles(this.context);

  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: ColorPalette.textColor,
    fontWeight: FontWeight.w400,
    height: 16/14
  );
}

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }
  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600);
  }
  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }
}