import 'package:get_it/get_it.dart';
import 'exports.dart';
import 'features/on_boarding/data/data_sources/onboarding_local_data_source.dart';
import 'features/on_boarding/data/repositories/onboarding_repo_impl.dart';
import 'features/on_boarding/domain/repositories/onboarding_repo.dart';
import 'features/on_boarding/domain/usecase/onborading_usecases.dart';
import 'features/on_boarding/presentation/managers/onboarding_manager_cubit.dart';

class ServiceLocator {
  GetIt getIt = GetIt.instance;

  /// Factory method that reuse same instance automatically

  static ServiceLocator instance =
      ServiceLocator._internal(); // named constructor

  /// Private constructor
  ServiceLocator._internal();

  factory ServiceLocator() => instance; // singleton
  Future<void> get init async {
    await registerPrefs;
    registerNetwork;
    registerOnboarding;
  }

  get registerNetwork {
    getIt.registerLazySingleton<Dio>(() => Dio());
    getIt.registerLazySingleton<DioInterceptor>(() => DioInterceptor());
    getIt.registerLazySingleton<LogInterceptor>(
      () => LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
    );
    getIt.registerLazySingleton<DioConsumer>(
      () => DioConsumer(
        client: getIt(),
        dioInterceptor: getIt(),
        logInterceptor: getIt(),
      )..dioInit(),
    );
    /*********************************** end of network  ****************************************/
  }

  get registerOnboarding {
    getIt.registerLazySingleton<OnBoardingLocalDataSource>(
      () => OnBoardingLocalDataSourceImplWithPrefs(cache: getIt()),
    );
    getIt.registerLazySingleton<OnBoardingRepo>(
      () => OnBoardingRepoImpl(onBoardingLocalDataSource: getIt()),
    );
    getIt.registerLazySingleton<OnBoardingUsesCases>(
      () => OnBoardingUsesCases(onBoardingRepo: getIt()),
    );
    getIt.registerLazySingleton<OnboardingManagerCubit>(
      () => OnboardingManagerCubit(onBoardingUsesCases: getIt()),
    );
  }

  get registerPrefs async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => preferences);
    getIt.registerLazySingleton<CacheAbstract>(
      () => CacheImpl(sharedPreferences: getIt<SharedPreferences>()),
    );
  }
}
