import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:note/pages/home/home_screen.dart';
import 'package:note/pages/login/login_screen.dart';
import 'package:note/pages/sign_up/sign_up_screen.dart';
import 'package:note/pages/splash/splash_screen.dart';

part 'app_routing.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: SignUpScreen),
  ],
)
class AppRouter extends _$AppRouter {}
