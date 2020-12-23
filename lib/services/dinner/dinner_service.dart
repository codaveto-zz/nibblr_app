import 'package:get/get.dart';
import 'package:nibblr_app/data/model/dinner.dart';
import 'package:nibblr_app/data/request/dinner_request.dart';
import 'package:nibblr_app/data/response/custom_response.dart';
import 'package:nibblr_app/services/http/http_service_api.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';

class DinnerService {
  final _log = locator<LoggerService>().getLogger('DinnerService');

  final _httpService = locator<HttpService>();
  final _endpoint = '/dinner';

  Future<List<Dinner>> getUpcomingDinners() async {
    List<Dinner> dinnerList = [];
    final CustomResponse response = await _httpService.get(path: _endpoint);
    if (response.statusCode == 200) {
        try {
          response.list.forEach((element) {dinnerList.add(Dinner.fromJson(element));});
        } catch (e) {
          print(e);
        }
    }
    dinnerList.sort((a, b) => a.endTime.compareTo(b.startTime));
    return dinnerList;
  }

  Future<bool> create({String title, String description, int maxGuests, DateTime startTime, DateTime endTime}) async {
    bool success = false;
    final CustomResponse response = await _httpService.post(
        path: _endpoint,
        requestBody: DinnerRequest(
                title: title, description: description, maxGuests: maxGuests, startTime: startTime, endTime: endTime)
            .toJson());
    if (response.statusCode == 201) {
      success = true;
    }
    Get.put(response, tag: 'error');
    return success;
  }
}
