part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.themeChangeMode({required bool isDark}) =
      themeChangeModeState;
  const factory AppState.langChange({required Locale locale}) = langChangeState;
}
