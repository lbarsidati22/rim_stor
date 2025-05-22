import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/custom_linear_button.dart';
import 'package:rim_stor/core/common/widgets/text_app.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 400,
      child: CustomLinearButton(
        height: 52.h,
        width: MediaQuery.sizeOf(context).width,
        onPressed: () {},
        child: TextApp(
          text: context.translate(LangKeys.login),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
    );
  }
}
