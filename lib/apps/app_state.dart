import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppState extends Equatable {
  final Locale locale;
  final ThemeMode themeMode;

  const AppState({
    required this.locale,
    required this.themeMode,
  });

  AppState copyWith({
    Locale? locale,
    ThemeMode? themeMode,
  }) {
    return AppState(
      locale: locale ?? this.locale,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  List<Object?> get props => [locale, themeMode];
}
