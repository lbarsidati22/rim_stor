import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/text_app.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/routes/app_routes.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/auth_title_info.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/dark_and_bottom.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/sign_up/sign_up_button.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/sign_up/sign_up_text_form.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/sign_up/user_avater_image.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DarkAndBottom(),
            SizedBox(
              height: 30.h,
            ),
            //signUp welcome
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              descreption: context.translate(
                LangKeys.signUpWelcome,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //user avater
            UserAvaterImage(),
            SizedBox(
              height: 20.h,
            ),
            //signUp with email and password
            SignUpTextForm(),
            SizedBox(
              height: 20.h,
            ),
            //signUp botton
            SignUpButton(),

            //Go to login
            CustomFadeInUp(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
