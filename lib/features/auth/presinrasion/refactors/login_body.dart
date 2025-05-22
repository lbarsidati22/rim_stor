import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/text_app.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/auth_title_info.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/dark_and_bottom.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/login/login_button.dart';
import 'package:rim_stor/features/auth/presinrasion/widgets/login/login_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DarkAndBottom(),
            SizedBox(
              height: 50.h,
            ),
            //welcome
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              descreption: context.translate(
                LangKeys.welcome,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            //login with email and password
            LoginTextForm(),
            SizedBox(
              height: 30.h,
            ),
            //login botton
            LoginButton(),
            SizedBox(
              height: 30.h,
            ),
            //Go to SignUp
            CustomFadeInUp(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.bluePinkLight,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
