import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rim_stor/core/app/bloc_observer.dart';
import 'package:rim_stor/core/app/env.variables.dart';
import 'package:rim_stor/core/di/injector_contenier.dart';
import 'package:rim_stor/core/services/shared_pref/shared_pref.dart';
import 'package:rim_stor/rim_stor_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await SharedPref().instantiatePreferences();
  await setupInjector();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const RimStorApp());
  });
}

// class RimStor extends StatelessWidget {
//   const RimStor({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Rim Stor',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const RimStorApp(),
//     );
//   }
// }
