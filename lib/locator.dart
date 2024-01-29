import 'package:get_it/get_it.dart';
import 'package:uni/repository/review_repository.dart';

GetIt locator = GetIt.instance;

setup() {
  locator.registerSingleton<ReviewRepository>(ReviewRepository());
}
