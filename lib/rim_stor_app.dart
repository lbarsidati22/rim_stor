import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rim_stor/core/app/connectivity_controller.dart';
import 'package:rim_stor/core/common/screens/no_network_screen.dart';

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
