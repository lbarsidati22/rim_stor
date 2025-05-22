import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';
import 'package:rim_stor/core/common/widgets/custom_text_field.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/language/lang_keys.dart';
import 'package:rim_stor/core/utils/app_regex.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}

class _SignUpTextFormState extends State<SignUpTextForm> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //user
        CustomFadeInRight(
          duration: 400,
          child: CustomTextField(
            hintText: context.translate(
              LangKeys.fullName,
            ),
            keyboardType: TextInputType.emailAddress,
            controller: TextEditingController(),
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 4) {
                return context.translate(LangKeys.validName);
              } else {
                return null;
              }
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
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
          height: 20.h,
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
