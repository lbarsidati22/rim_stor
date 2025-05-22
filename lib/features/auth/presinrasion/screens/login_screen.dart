import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/features/auth/presinrasion/refactors/auth_custom_painter.dart';
import 'package:rim_stor/features/auth/presinrasion/refactors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(
          MediaQuery.sizeOf(context).width,
          150.h,
        ),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkDark!,
              context.color.bluePinkDark!,
              context.color.bluePinkDark!,
              context.color.bluePinkLight!,
            ],
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: LoginBody(),
      ),
    );
  }
}
