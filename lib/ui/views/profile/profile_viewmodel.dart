import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nibblr_app/data/model/user.dart';
import 'package:nibblr_app/data/request/update_request.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/login/user_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('ProfileViewModel');

  final GlobalKey<FormState> _formKey = GlobalKey();

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();

  User user;

  final _userService = UserService();

// --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    user = await _userService.get();
    if (user != null) {
      nameController.text = user?.name;
      _emailController.text = user?.email;
    }
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

// --------------- USER LOGIC --------------- USER LOGIC --------------- USER LOGIC --------------- \\

  Future<void> update() async {
    if (user != null) {
      bool success = await runBusyFuture(_userService.update(id: user.id, name: _nameController.text, email: _emailController.text));
      if (success) {
        Get.snackbar('Success', 'Your profile is updated.');
      }
    }
  }

  // --------------- NAV --------------- NAV --------------- NAV --------------- \\
  void goBack() {
    Get.offNamed(Routes.homeView);
  }
// --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  GlobalKey<FormState> get formKey => _formKey;

  get nameController => _nameController;

  get emailController => _emailController;

}
