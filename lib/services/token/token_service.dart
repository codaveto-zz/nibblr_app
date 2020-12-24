import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenService {
  final _log = locator<LoggerService>().getLogger('SharedPrefService');

  static const String _tokenKey = 'Authorization';

  // --------------- TOKEN --------------- TOKEN --------------- TOKEN --------------- \\

  Future<void> saveToken(String token) async {
    final sharedPref = await _sharedPref;
    try {
      await (sharedPref).setString(_tokenKey, 'Bearer $token');
    } catch (e) {
      _log.e('''Saving token failed: $e''');
    }
  }

  Future<bool> hasToken() async {
    final hasToken = (await _sharedPref).containsKey(_tokenKey);
    return hasToken;
  }

  Future<String> getToken() async {
    return (await _sharedPref).getString(_tokenKey);
  }

  Future<void> deleteToken() async {
    (await _sharedPref).clear();
  }

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  Future<SharedPreferences> get _sharedPref async => await SharedPreferences.getInstance();
}
