import 'package:brasileirao/model/time.dart';
import 'package:brasileirao/repositories/times_repository.dart';

class HomeController {
  TimesRepository timesRepository;

  List<Time> get tabela => timesRepository.times;

  HomeController() {
    timesRepository = TimesRepository();
  }
}
