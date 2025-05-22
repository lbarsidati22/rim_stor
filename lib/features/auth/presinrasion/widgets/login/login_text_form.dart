import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/custom_text_field.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //email
        CustomFadeInRight(
          duration: 400,
          child: CustomTextField(
            hintText: context.translate(
              LangKeys.email,
            ),
            keyboardType: TextInputType.emailAddress,
            controller: TextEditingController(),
            validator: (value) {
              if (!AppRegex.isEmailValid('')) {
                return context.translate(LangKeys.validEmail);
              } else {
                return null;
              }
            },
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        //password
        CustomFadeInLeft(
          duration: 400,
          child: CustomTextField(
            hintText: context.translate(
              LangKeys.password,
            ),
            keyboardType: TextInputType.visiblePassword,
            controller: TextEditingController(),
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return context.translate(LangKeys.validPasswrod);
              } else {
                return null;
              }
            },
            obscureText: isShowPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: Icon(
                isShowPassword ? Icons.visibility_off : Icons.visibility,
                color: context.color.textColor,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
