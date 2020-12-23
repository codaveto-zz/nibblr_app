import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nibblr_app/data/model/dinner.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/dinner/dinner_service.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/token/token_service.dart';
import 'package:nibblr_app/ui/widgets/info_text_field.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:nibblr_app/util/methods/notify.dart';
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

  void dinnerTapped(Dinner dinner) {
    Get.bottomSheet(Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(CustomSize.medium), topRight: Radius.circular(CustomSize.medium)), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(CustomSize.medium),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              dinner.title,
              style: Get.textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            _buildDivider(),
            Text(
              dinner.description,
              style: Get.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,
            ),
            _buildDivider(),
            CustomInfoTextField(
              name: 'Guests',
              value: dinner.maxGuests.toString(),
            ),
            CustomInfoTextField(
              name: 'Start',
              value: DateFormat('dd MMM yyyy - hh:mm').format(dinner.startTime),
            ),
            CustomInfoTextField(
              name: 'End',
              value: DateFormat('dd MMM yyyy - hh:mm').format(dinner.endTime),
            ),
            _buildDivider(),
            Padding(
              padding: const EdgeInsets.all(CustomSize.medium),
              child: RaisedButton(
                  child: Text('Join'),
                  onPressed: () {
                    _joinDinner(dinner);
                  }),
            )
          ],
        ),
      ),
    ));
  }

  _joinDinner(Dinner dinner) async {
    final result = await showOkCancelAlertDialog(
        context: Get.context, title: 'Join Dinner', message: 'Are you sure you want to join this dinner?');
    if (result == OkCancelResult.ok) {
      Get.back();
      final success = await _dinnerService.join(dinnerId: dinner.id);
      if (success) {
        Get.snackbar('Success', 'Joined the dinner!');
      }
    }
  }

  Future<void> _initDinners() async {
    _dinners = await runBusyFuture(_dinnerService.getUpcomingDinners());
  }

  Future<void> refresh() async {
    await _initDinners();
    if (_dinners?.isEmpty ?? true) {
      Get.snackbar('Oops', 'No dinners found, try again later.', snackPosition: SnackPosition.TOP);
    }
  }

  // --------------- UTIL --------------- UTIL --------------- UTIL --------------- \\

  Padding _buildDivider() {
    return Padding(
      padding: const EdgeInsets.all(CustomSize.small),
      child: Divider(),
    );
  }

  Future<void> logout() async {
    final result = await showOkCancelAlertDialog(
        context: Get.overlayContext, title: 'Logout', message: 'Are you sure you want to logout?');
    if (result == OkCancelResult.ok) {
      TokenService().deleteToken();
      Get.offAndToNamed(Routes.loginView);
    }
  }
  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  List<Dinner> get dinners => _dinners;

}
