import 'package:get_it/get_it.dart';
import 'package:login_task/data/contract/auth_contract.dart';
import 'package:login_task/data/repository/auth_repo.dart';
import 'package:login_task/data/service/login_service.dart';

final locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => LoginService());

  locator.registerLazySingleton<AuthContract>(() => AuthRepo(locator()));
}
