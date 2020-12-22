import 'package:flutter/material.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('LoginViewModel');

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

// --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  GlobalKey<FormState> get formKey => _formKey;
}
