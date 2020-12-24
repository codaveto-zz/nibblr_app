// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nibblr_app/nav/transitions.dart';

import '../ui/views/add_dinner/add_dinner_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/profile/profile_view.dart';
import '../ui/views/signup/signup_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/startup-view';
  static const String homeView = '/home-view';
  static const String loginView = '/login-view';
  static const String signupView = '/signup-view';
  static const String addDinnerView = '/add-dinner-view';
  static const String profileView = '/profile-view';
  static const all = <String>{
    startupView,
    homeView,
    loginView,
    signupView,
    addDinnerView,
    profileView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signupView, page: SignupView),
    RouteDef(Routes.addDinnerView, page: AddDinnerView),
    RouteDef(Routes.profileView, page: ProfileView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const StartupView(),
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
    LoginView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => LoginView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SignupView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SignupView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    AddDinnerView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const AddDinnerView(),
        settings: data,
        transitionsBuilder: TransitionMaster.sharedAxisTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    ProfileView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const ProfileView(),
        settings: data,
        transitionsBuilder: TransitionMaster.sharedAxisTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}
