import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_expert/splash.dart';
import 'package:med_expert/views/auth/login.dart';
import 'package:med_expert/views/auth/signup.dart';
import 'package:med_expert/views/main/homepage/navigation_tab.dart';
import 'package:med_expert/views/main/homepage/profile.dart';

class RouterController {
  RouterController._();

  static String initRoute = '/';
  static final _rootNavigationKey = GlobalKey<NavigatorState>();
  static final GoRouter goRouterProvider = GoRouter(
      navigatorKey: _rootNavigationKey,
      initialLocation: initRoute,
      routes: <RouteBase>[
        GoRoute(path: "/", builder: ((context, state) => MainPage())),
        GoRoute(path: "/login", builder: ((context, state) => LoginPage())),
        GoRoute(path: "/signup", builder: ((context, state) => SignUp())),
        GoRoute(path: "/home", builder: ((context, state) => NavigationTab())),
        GoRoute(
            path: "/dashboard/profile",
            builder: ((context, state) => ProfilePage()))
      ]);
}
