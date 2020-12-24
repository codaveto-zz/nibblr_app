import 'package:get/get.dart';
import 'package:nibblr_app/data/model/dinner.dart';
import 'package:nibblr_app/data/model/user.dart';
import 'package:nibblr_app/data/request/dinner_request.dart';
import 'package:nibblr_app/data/response/custom_response.dart';
import 'package:nibblr_app/services/http/http_service_api.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:nibblr_app/util/methods/notify.dart';

class DinnerService {
  final _log = locator<LoggerService>().getLogger('DinnerService');

  final _httpService = locator<HttpService>();
  final _endpoint = '/dinner';

  Future<List<Dinner>> get() async {
    List<Dinner> dinnerList = [];
    final CustomResponse response = await _httpService.get(path: _endpoint);
    if (response.statusCode == 200) {
      response.list.forEach((element) {
        dinnerList.add(Dinner.fromJson(element));
      });
    }
    dinnerList.sort((a, b) => a.startTime.compareTo(b.startTime));
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

  Future<bool> join({int dinnerId}) async {
    bool success = false;
    final CustomResponse response = await _httpService.post(path: _endpoint + '/$dinnerId' + '/joinrequest');
    if (response.statusCode == 200) {
      success = true;
    } else {
      notifyError(response);
    }
    return success;
  }

  Future<List<User>> getGuests({int dinnerId}) async {
    List<User> userList = [];
    final CustomResponse response = await _httpService.get(path: _endpoint + '/$dinnerId' + '/user');
    if (response.statusCode == 200) {
      response.list.forEach((element) {
        userList.add(User.fromJson(element));
      });
    }
    userList.sort((a, b) => a.name.compareTo(b.name));
    return userList;
  }
}
