import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/app/connectivity_controller.dart';
import 'package:rim_stor/core/common/screens/no_network_screen.dart';
import 'package:rim_stor/core/language/app_localizations_delegate.dart';
import 'package:rim_stor/core/language/app_localizations_setup.dart';
import 'package:rim_stor/core/routes/app_routes.dart';
import 'package:rim_stor/core/style/theme/app_theme.dart';

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
              title: 'Rim Stor',
              theme: themeLight(),
              locale: Locale('en'),
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              builder: (context, widget) {
                return GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  child: Scaffold(
                    body: Builder(builder: (context) {
                      ConnectivityController.inistanc.init();
                      return widget!;
                    }),
                  ),
                );
              },
              initialRoute: AppRoutes.testOne,
              onGenerateRoute: AppRoutes.onGenerateRoute,
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
