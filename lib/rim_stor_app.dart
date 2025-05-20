import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/app/connectivity_controller.dart';
import 'package:rim_stor/core/common/screens/no_network_screen.dart';
import 'package:rim_stor/core/style/fonts/font_family_helper.dart';
import 'package:rim_stor/core/style/fonts/font_weight_helper.dart';

class RimStorApp extends StatelessWidget {
  const RimStorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.inistanc.isConnected,
      builder: (_, value, widget) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(builder: (context) {
                    ConnectivityController.inistanc.init();
                    return widget!;
                  }),
                );
              },
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Rim Stor'),
                ),
                body: const Center(
                  child: Column(
                    children: [
                      Text(
                        'hello world',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'مرحبا بالعالم',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'hello mauritania',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.poppinsEnglish,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                      Text(
                        'مرحبا بموريتانيا',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.cairoArabic,
                          fontWeight: FontWeightHelper.medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return const MaterialApp(
            title: 'No Network',
            home: NoNetworkScreen(),
          );
        }

        // return const Scaffold(
        //   body: Center(
        //     child: Text(
        //       'check Your network',
        //     ),
        //   ),
        // );
      },
    );
  }
}
