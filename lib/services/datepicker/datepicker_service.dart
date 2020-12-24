import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatePickerService {

  Future<DateTime> pickDate() async {
    return await showDatePicker(
        context: Get.overlayContext,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 366)));
  }
}
