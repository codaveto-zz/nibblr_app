import 'dart:async';

import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/http/http_service_api.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/token/token_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  Logger _log;

  bool _userIsLoggedIn = false;

  final _sharedPrefService = locator<TokenService>();

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log = locator<LoggerService>().getLogger('StartupViewModel');
    await _checkLoggedInStatus();
    await _handleStartupLogic();
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- STARTUP LOGIC --------------- STARTUP LOGIC --------------- STARTUP LOGIC --------------- \\

  Future _handleStartupLogic() async {
    if (_userIsLoggedIn) {
      await _goToHomeView();
    } else {
      _goToLoginView();
    }
  }

  Future _checkLoggedInStatus() async {
    if (!_userIsLoggedIn) {
      _userIsLoggedIn = (await _sharedPrefService.getToken()) != null;
    }
  }

  // --------------- NAV LOGIC --------------- NAV LOGIC --------------- NAV LOGIC --------------- \\

  void _goToLoginView() {
    locator<HttpService>().resetService();
    TokenService().deleteToken();
    Get.offNamed(Routes.loginView);
  }

  Future _goToHomeView() async {
    await locator<HttpService>().init();
    Get.offNamed(Routes.homeView);
  }

}



