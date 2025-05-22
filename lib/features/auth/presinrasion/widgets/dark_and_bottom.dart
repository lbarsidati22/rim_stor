import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/custom_linear_button.dart';
import 'package:rim_stor/core/common/widgets/text_app.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';

class DarkAndBottom extends StatelessWidget {
  const DarkAndBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: Icon(
              Icons.light_mode_outlined,
              color: Colors.white,
            ),
          ),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            width: 100.w,
            height: 44.h,
            onPressed: () {},
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
