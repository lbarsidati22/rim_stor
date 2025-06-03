import 'package:get_it/get_it.dart';
import 'package:rim_stor/core/app/app_cubit/app_cubit.dart';
import 'package:rim_stor/core/services/graphql/api_service.dart';
import 'package:rim_stor/core/services/graphql/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  sl.registerFactory(AppCubit.new);
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
}
