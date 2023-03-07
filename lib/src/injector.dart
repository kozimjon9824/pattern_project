import 'package:get_it/get_it.dart';
import 'package:pattern_project/src/features/authentication/domain/usecases/login.dart';
import 'package:pattern_project/src/features/authentication/domain/usecases/verify.dart';
import 'package:pattern_project/src/features/authentication/presentation/cubits/timer/timer_cubit.dart';
import 'package:pattern_project/src/features/authentication/presentation/cubits/verify/verify_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/network/network_client.dart';
import 'features/authentication/presentation/cubits/login/login_cubit.dart';

final sl = GetIt.instance;

Future<void> initDi() async {
  await initCommons();
  await initAuthDi();
}

Future<void> initCommons() async {
  // mini local db
  var pref = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => pref);

  // dio api client for network requests
  sl.registerLazySingleton(() => NetworkClient());
  var dio = await sl<NetworkClient>().createDio();
}

Future<void> initAuthDi() async {
  //cubit
  sl.registerFactory(() => LoginCubit(sl()));
  sl.registerFactory(() => VerifyCubit(sl()));
  sl.registerFactory(() => TimerCubit());

  // use-cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => VerifyUseCase(sl()));
}
