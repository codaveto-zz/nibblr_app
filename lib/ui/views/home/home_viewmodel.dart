import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:get/get.dart';
import 'package:nibblr_app/data/model/dinner.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/dinner/dinner_service.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/token/token_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('HomeViewModel');
  final _dinnerService = DinnerService();

  List<Dinner> _dinners = [];

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    await _initDinners();
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- DINNERS --------------- DINNERS --------------- DINNERS --------------- \\

  void goToDinnerView() {
    Get.offNamed(Routes.addDinnerView);
  }

  void dinnerTapped() {}

  Future<void> _initDinners() async {
    _dinners = await runBusyFuture(_dinnerService.getUpcomingDinners());
  }

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  List<Dinner> get dinners => _dinners;

  Future<void> refresh() async {
    await _initDinners();
    if (_dinners?.isEmpty ?? true) {
      Get.snackbar('Oops', 'No dinners found, try again later.', snackPosition: SnackPosition.TOP);
    }
  }

  Future<void> logout() async {
    final result = await showOkCancelAlertDialog(
        context: Get.overlayContext, title: 'Logout', message: 'Are you sure you want to logout?');
    if (result == OkCancelResult.ok) {
      TokenService().deleteToken();
      Get.offAndToNamed(Routes.loginView);
    }
  }
}
