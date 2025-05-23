import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/app/app_cubit/app_cubit.dart';
import 'package:rim_stor/core/app/connectivity_controller.dart';
import 'package:rim_stor/core/common/screens/no_network_screen.dart';
import 'package:rim_stor/core/di/injector_contenier.dart';
import 'package:rim_stor/core/language/app_localizations_setup.dart';
import 'package:rim_stor/core/routes/app_routes.dart';
import 'package:rim_stor/core/services/shared_pref/pref_keys.dart';
import 'package:rim_stor/core/services/shared_pref/shared_pref.dart';
import 'package:rim_stor/core/style/theme/app_theme.dart';

class RimStorApp extends StatelessWidget {
  const RimStorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.inistanc.isConnected,
      builder: (_, value, widget) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changAppThemeMode(
                sharedMode: SharedPref().getBoolean(
                  PrefKeys.themeMode,
                ),
              )
              ..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Rim Stor',
                    theme: cubit.isDark ? themeLight() : themeDark(),
                    locale: Locale(cubit.cureentLangCode),
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
                    initialRoute: AppRoutes.login,
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                  );
                },
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
