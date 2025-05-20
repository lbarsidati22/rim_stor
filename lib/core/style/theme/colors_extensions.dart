import 'package:flutter/material.dart';
import 'package:rim_stor/core/style/colors/colors_dark.dart';
import 'package:rim_stor/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  final Color? mainColor;
  MyColors({
    required this.mainColor,
  });
  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(mainColor: mainColor);
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(mainColor: mainColor);
  }

  static MyColors dark = MyColors(
    mainColor: ColorsDark.mainColor,
  );
  static MyColors light = MyColors(
    mainColor: ColorsLight.mainColor,
  );
}
