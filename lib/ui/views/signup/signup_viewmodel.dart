import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class SignupViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('SignupViewModel');

  final GlobalKey<FormState> _formKey = GlobalKey();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- USER LOGIC --------------- USER LOGIC --------------- USER LOGIC --------------- \\

  void loginUser({String email, String password, String name}) {

  }

// --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  GlobalKey<FormState> get formKey => _formKey;


  void goToSignup() {
    Get.offAndToNamed(Routes.loginView);
  }
}
