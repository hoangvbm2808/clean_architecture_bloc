import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChangeLocale extends AppEvent {
  final Locale locale;
  final BuildContext context;

  ChangeLocale(this.locale, this.context);

  @override
  List<Object?> get props => [locale];
}

class ChangeThemeMode extends AppEvent {
  final ThemeMode themeMode;

  ChangeThemeMode(this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}
