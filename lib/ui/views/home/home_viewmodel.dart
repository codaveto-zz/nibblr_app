import 'package:nibblr_app/data/model/dinner.dart';
import 'package:nibblr_app/services/dinner/dinner_service.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _log = locator<LoggerService>().getLogger('HomeViewModel');
  final _dinnerService = DinnerService();

  List<Dinner> _dinners = [];

  // --------------- INIT --------------- INIT --------------- INIT --------------- \\

  void initialise() async {
    _log.i('I am initialized');
    _dinners = await runBusyFuture(_dinnerService.getUpcomingDinners());
    notifyListeners();
  }

  @override
  void dispose() {
    _log.w('I am disposed');
    super.dispose();
  }

  // --------------- DINNERS --------------- DINNERS --------------- DINNERS --------------- \\

  void makeDinner() {}

  void dinnerTapped() {}

  Future<void> initDinners() async {}

  // --------------- GET & SET --------------- GET & SET --------------- GET & SET --------------- \\

  List<Dinner> get dinners => _dinners;
}
