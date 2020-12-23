import 'package:nibblr_app/data/model/dinner.dart';
import 'package:nibblr_app/data/response/custom_response.dart';
import 'package:nibblr_app/services/http/http_service_api.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:nibblr_app/util/methods/notify.dart';

class DinnerService {

  final _log = locator<LoggerService>().getLogger('DinnerService');

  final _httpService = locator<HttpService>();

  Future<List<Dinner>> getUpcomingDinners() async {
    DinnerList dinnerList;
    final CustomResponse response = await _httpService.get(path: '/dinner');
    if (response.statusCode == 200) {
      dinnerList = DinnerList.fromJson({'carwashList': response.list});
    } else {
      notifyError(response);
    }
    return dinnerList.dinnerList;
  }



}
