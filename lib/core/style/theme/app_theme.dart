import 'package:flutter/material.dart';
import 'package:rim_stor/core/style/colors/colors_dark.dart';
import 'package:rim_stor/core/style/colors/colors_light.dart';
import 'package:rim_stor/core/style/fonts/font_family_helper.dart';
import 'package:rim_stor/core/style/theme/colors_extensions.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: <ThemeExtension<dynamic>>[
      MyColors.dark,
    ],
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getLocalozedFontFamily(),
      ),
    ),
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: <ThemeExtension<dynamic>>[
      MyColors.light,
    ],
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
        fontFamily: FontFamilyHelper.getLocalozedFontFamily(),
      ),
    ),
    useMaterial3: true,
  );
}
