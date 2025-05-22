import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/text_app.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo(
      {super.key, required this.title, required this.descreption});
  final String title;
  final String descreption;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeightHelper.bold,
              color: context.color.textColor,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextApp(
            text: descreption,
            theme: context.textStyle.copyWith(
              fontSize: 15.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.medium,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
