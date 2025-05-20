import 'package:flutter/material.dart';
import 'package:rim_stor/core/language/app_localizations.dart';
import 'package:rim_stor/core/style/theme/assets_extension.dart';
import 'package:rim_stor/core/style/theme/colors_extensions.dart';

extension ContextExtensions on BuildContext {
  // colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  // lang
  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  // style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  // images
  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;
  //navigation
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() {
    return Navigator.of(this).pop();
  }
}
