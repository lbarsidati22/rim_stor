import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rim_stor/core/services/shared_pref/pref_keys.dart';
import 'package:rim_stor/core/services/shared_pref/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());
  //theme mode
  bool isDark = true;
  String cureentLangCode = 'en';
  Future<void> changAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref.sharedPreferences
          .setBool(PrefKeys.themeMode, isDark)
          .then((onValue) {
        emit(AppState.themeChangeMode(isDark: isDark));
      });
    }
  }

  //lang chang
  void getSavedLanguage() {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';
    cureentLangCode = result!;
    emit(AppState.langChange(locale: Locale(cureentLangCode)));
  }

  Future<void> _changLang(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    cureentLangCode = langCode;
    emit(AppState.langChange(locale: Locale(cureentLangCode)));
  }

  void toArabic() => _changLang('ar');
  void toEnglish() => _changLang('en');
}
