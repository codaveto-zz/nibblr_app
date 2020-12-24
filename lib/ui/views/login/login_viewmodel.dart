import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/login/user_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:nibblr_app/util/methods/notify.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('LoginViewModel');

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

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

  Future<void> loginUser({String email, String password}) async {
      if (_formKey.currentState.validate()) {
        final success = await runBusyFuture(UserService()
                  .login(email: emailController.text, password: passwordController.text));
        await runBusyFuture(Future.delayed(Duration(seconds: 2)));
        if (success) {
          Get.toNamed(Routes.homeView);
        } else {
          notifyError(Get.find(tag: 'error'));
        }
      }
  }

  GlobalKey<FormState> get formKey =>
      _formKey; // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  void goToSignup() {
    Get.offAndToNamed(Routes.signupView);
  }
}
