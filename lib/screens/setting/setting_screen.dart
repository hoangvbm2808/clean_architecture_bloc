import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../apps/app_bloc.dart';
import '../../apps/app_event.dart';
import '../../apps/app_state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text('settings.title'.tr()),
              leading: BackButton(
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            body: Column(
              children: [
                ListTile(
                  title: Text('common.language'.tr()),
                  trailing: DropdownButton<Locale>(
                    value: state.locale,
                    items: [
                      DropdownMenuItem(
                        value: Locale('en'),
                        child: Text('common.english'.tr()),
                      ),
                      DropdownMenuItem(
                        value: Locale('vi'),
                        child: Text('common.vietnamese'.tr()),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        context
                            .read<AppBloc>()
                            .add(ChangeLocale(value, context));
                      }
                    },
                  ),
                ),
                ListTile(
                  title: Text('common.theme'.tr()),
                  trailing: DropdownButton<ThemeMode>(
                    value: state.themeMode,
                    items: [
                      DropdownMenuItem(
                        value: ThemeMode.system,
                        child: Text('common.system_mode'.tr()),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.light,
                        child: Text('common.light_mode'.tr()),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.dark,
                        child: Text('common.dark_mode'.tr()),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        context.read<AppBloc>().add(ChangeThemeMode(value));
                      }
                    },
                  ),
                ),
              ],
            ));
      },
    );
  }
}
