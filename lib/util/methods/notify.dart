import 'package:get/get.dart';
import 'package:nibblr_app/data/response/custom_response.dart';
import 'package:nibblr_app/data/response/error_response.dart';

void notifyError(CustomResponse response) {
  Get.snackbar('Oops', (ErrorResponse.fromJson(response.object))?.message ?? 'Er ging iets mis.');
}
