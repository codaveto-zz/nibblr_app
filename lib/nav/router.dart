// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nibblr_app/nav/transitions.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String loginView = '/login-view';
  static const String homeView = '/home-view';
  static const String startupView = '/startup-view';
  static const all = <String>{
    loginView,
    homeView,
    startupView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.startupView, page: StartupView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const LoginView(),
        settings: data,
        transitionsBuilder: TransitionMaster.sharedAxisTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    HomeView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const HomeView(),
        settings: data,
        transitionsBuilder: TransitionMaster.sharedAxisTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    StartupView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const StartupView(),
        settings: data,
        transitionsBuilder: TransitionMaster.sharedAxisTransition,
        transitionDuration: const Duration(milliseconds: 800),
      );
    },
  };
}
