import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nibblr_app/nav/router.dart';
import 'package:nibblr_app/services/dinner/dinner_service.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:nibblr_app/util/methods/notify.dart';
import 'package:stacked/stacked.dart';

class AddDinnerViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('DinnerViewModel');

  final GlobalKey<FormState> _formKey = GlobalKey();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _maxGuestController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();

  DateTime _startTime, _endTime;

// --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- DINNER --------------- DINNER --------------- DINNER --------------- \\

  Future<void> createDinner() async {
    if (_formKey.currentState.validate()) {
    final dinnerService = DinnerService();
      final createDinnerSuccess = await runBusyFuture(dinnerService.create(
          title: _titleController.text,
          description: _descriptionController.text,
          maxGuests: int.parse(_maxGuestController.text),
          startTime: _startTime,
          endTime: _endTime));
      await runBusyFuture(Future.delayed(Duration(seconds: 2)));
      if (createDinnerSuccess) {
        Get.snackbar('Success', 'Dinner created.');
        _resetControllers();
        return;
      }
      notifyError(Get.find(tag: 'error'));
    }
  }

  void _resetControllers() {
    _titleController.clear();
    _descriptionController.clear();
    _maxGuestController.clear();
    _startTimeController.clear();
    _endTimeController.clear();
  }

  // --------------- DATE --------------- DATE --------------- DATE --------------- \\

  Future<void> pickStartTime() async {
    _startTime = await showDatePicker(
        context: Get.overlayContext,
        initialDate: DateTime.now().add(Duration(days: 1)),
        firstDate: DateTime.now().add(Duration(days: 1)),
        lastDate: DateTime.now().add(Duration(days: 366)));
    if (_startTime != null) {
      final time = await showTimePicker(context: Get.overlayContext, initialTime: TimeOfDay.now());
      if (time != null) {
        _startTime = DateTime(_startTime.year, _startTime.month, _startTime.day, time.hour, time.minute);
        _startTimeController.text = DateFormat('dd MMM yyyy - hh:mm').format(_startTime);
      } else {
        _startTimeController.clear();
      }
    } else {
      _startTimeController.clear();
    }
  }

  void pickEndTime() async {
    if (_startTime != null) {
      _endTime = await showDatePicker(
          context: Get.overlayContext,
          initialDate: _startTime,
          firstDate: _startTime,
          lastDate: DateTime.now().add(Duration(days: 366)));
      if (_endTime != null) {
        final time = await showTimePicker(context: Get.overlayContext, initialTime: TimeOfDay.fromDateTime(_startTime));
        if (time != null) {
          _endTime = DateTime(_endTime.year, _endTime.month, _endTime.day, time.hour, time.minute);
          if (_endTime.isAfter(startTime)) {
            _endTimeController.text = DateFormat('dd MMM yyyy - hh:mm').format(_endTime);
          } else {
            _endTime = null;
            showOkAlertDialog(
                context: Get.overlayContext, title: 'Oops', message: 'Pick an ending time after start time.');
          }
        } else {
          _endTimeController.clear();
        }
      } else {
        _endTimeController.clear();
      }
    } else {
      showOkAlertDialog(context: Get.overlayContext, title: 'Oops', message: 'Pick a starting time first.');
    }
  }

  // --------------- NAV --------------- NAV --------------- NAV --------------- \\

  void goBack() {
    Get.offNamed(Routes.homeView);
  }

// --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\
  get endTime => _endTime;

  DateTime get startTime => _startTime;

  get endTimeController => _endTimeController;

  get startTimeController => _startTimeController;

  get maxGuestController => _maxGuestController;

  get descriptionController => _descriptionController;

  get titleController => _titleController;

  GlobalKey<FormState> get formKey => _formKey;

}
