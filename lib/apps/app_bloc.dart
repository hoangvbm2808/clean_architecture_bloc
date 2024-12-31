import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:onsunday_forum/services/storage.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final StorageService storageService;

  AppBloc(this.storageService)
      : super(
          AppState(
            locale: Locale(storageService.getData('language') ?? 'en'),
            themeMode: ThemeMode.values[
                storageService.getData('themeMode') ?? ThemeMode.system.index],
          ),
        ) {
    on<ChangeLocale>(_onChangeLocale);
    on<ChangeThemeMode>(_onChangeThemeMode);
  }

  void _onChangeLocale(ChangeLocale event, Emitter<AppState> emit) async {
    emit(state.copyWith(locale: event.locale));
    await storageService.saveData('language', event.locale.languageCode);
    if (event.context.mounted) {
      EasyLocalization.of(event.context)?.setLocale(event.locale);
    }
  }

  void _onChangeThemeMode(ChangeThemeMode event, Emitter<AppState> emit) async {
    emit(state.copyWith(themeMode: event.themeMode));
    await storageService.saveData('themeMode', event.themeMode.index);
  }
}
