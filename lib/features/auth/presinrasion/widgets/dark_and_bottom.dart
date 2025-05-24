import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/app/app_cubit/app_cubit.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/custom_linear_button.dart';
import 'package:rim_stor/core/common/widgets/text_app.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/app_localizations.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';

class DarkAndBottom extends StatelessWidget {
  const DarkAndBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: cubit.changAppThemeMode,
                child: Icon(
                  cubit.isDark
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            width: 100.w,
            height: 44.h,
            onPressed: () {
              if (AppLocalizations.of(context)!.isEnLocale) {
                return cubit.toArabic();
              } else {
                return cubit.toEnglish();
              }
            },
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
