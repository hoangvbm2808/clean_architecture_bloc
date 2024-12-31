import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:onsunday_forum/screens/setting/setting_screen.dart';

import '../../features/auth/bloc/auth_bloc.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/login/login_screen.dart';

class RouteName {
  static const String home = '/';
  static const String login = '/login';
  static const String setting = '/setting';

  static const publicRoutes = [
    login,
  ];
}

final router = GoRouter(
  redirect: (context, state) {
    if (RouteName.publicRoutes.contains(state.fullPath)) {
      return null;
    }
    if (context.read<AuthBloc>().state is AuthAuthenticateSuccess) {
      return null;
    }
    return RouteName.login;
  },
  routes: [
    GoRoute(
      path: RouteName.home,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: RouteName.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: RouteName.setting,
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);
