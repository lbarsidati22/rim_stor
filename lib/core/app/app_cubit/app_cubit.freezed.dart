// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppState()';
  }
}

/// @nodoc
class $AppStateCopyWith<$Res> {
  $AppStateCopyWith(AppState _, $Res Function(AppState) __);
}

/// @nodoc

class _Initial implements AppState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppState.initial()';
  }
}

/// @nodoc

class themeChangeModeState implements AppState {
  const themeChangeModeState({required this.isDark});

  final bool isDark;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $themeChangeModeStateCopyWith<themeChangeModeState> get copyWith =>
      _$themeChangeModeStateCopyWithImpl<themeChangeModeState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is themeChangeModeState &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @override
  String toString() {
    return 'AppState.themeChangeMode(isDark: $isDark)';
  }
}

/// @nodoc
abstract mixin class $themeChangeModeStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $themeChangeModeStateCopyWith(themeChangeModeState value,
          $Res Function(themeChangeModeState) _then) =
      _$themeChangeModeStateCopyWithImpl;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class _$themeChangeModeStateCopyWithImpl<$Res>
    implements $themeChangeModeStateCopyWith<$Res> {
  _$themeChangeModeStateCopyWithImpl(this._self, this._then);

  final themeChangeModeState _self;
  final $Res Function(themeChangeModeState) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDark = null,
  }) {
    return _then(themeChangeModeState(
      isDark: null == isDark
          ? _self.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class langChangeState implements AppState {
  const langChangeState({required this.locale});

  final Locale locale;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $langChangeStateCopyWith<langChangeState> get copyWith =>
      _$langChangeStateCopyWithImpl<langChangeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is langChangeState &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @override
  String toString() {
    return 'AppState.langChange(locale: $locale)';
  }
}

/// @nodoc
abstract mixin class $langChangeStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory $langChangeStateCopyWith(
          langChangeState value, $Res Function(langChangeState) _then) =
      _$langChangeStateCopyWithImpl;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$langChangeStateCopyWithImpl<$Res>
    implements $langChangeStateCopyWith<$Res> {
  _$langChangeStateCopyWithImpl(this._self, this._then);

  final langChangeState _self;
  final $Res Function(langChangeState) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locale = null,
  }) {
    return _then(langChangeState(
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

// dart format on
