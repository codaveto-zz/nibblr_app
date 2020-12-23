import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
final _log = locator<LoggerService>().getLogger('HomeViewModel');

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log.i('I am initialized');
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- DINNNERS --------------- DINNNERS --------------- DINNNERS --------------- \\

  void makeDinner() {
  }


  void dinnerTapped() {
  }
  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\


  List<int> get dinners => [1, 2, 3, 4,5 ,6 ,7 ,8 , 9 ,1];
}
