import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:nibblr_app/data/request/create_request.dart';
import 'package:nibblr_app/data/request/login_request.dart';
import 'package:nibblr_app/data/response/create_response.dart';
import 'package:nibblr_app/data/response/custom_response.dart';
import 'package:nibblr_app/services/http/http_service_api.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/token/token_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';

class UserService {

  final _log = locator<LoggerService>().getLogger('LoginService');
  final _httpService = locator<HttpService>();
  final _tokenService = locator<TokenService>();
  final _endpoint = '/user';

  Future<bool> login({@required String email, @required String password}) async {
    bool success = false;
    final CustomResponse response = await _httpService.post(path: _endpoint + '/loginrequest', requestBody: LoginRequest(email, password).toJson());
    if (response.statusCode == 200) {
      await _tokenService.saveToken(CreateResponse.fromJson(response.object).accessToken);
      success = true;
    }
    Get.put(response, tag: 'error');
    return success;
  }

  Future<bool> create({@required String name, @required String email, @required String password}) async {
    bool success = false;
    final CustomResponse response = await _httpService.post(path: _endpoint+ '/createrequest', requestBody: CreateRequest(name, email, password).toJson());
    if (response.statusCode == 201) {
      success = true;
    }
    Get.put(response, tag: 'error');
    return success;
  }
}
