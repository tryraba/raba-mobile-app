part of 'locator.dart';

void _initExternal() {
  locator
    ..registerLazySingleton<Dio>(
      () {
        final dio = Dio(
          BaseOptions(
            baseUrl: AppEnv.apiBaseURL,
            contentType: 'application/json',
            connectTimeout: const Duration(seconds: 20),
          ),
        );
        dio.interceptors.addAll(
          [
            LoggingInterceptor(logger: locator()),
            TokenInterceptor(storageService: locator()),
            DataParserInterceptor(),
            RetryInterceptor(
              dio: dio,
              logPrint: debugPrint,
              retries: 3,
              retryDelays: const [
                Duration(seconds: 1),
                Duration(seconds: 2),
                Duration(seconds: 3),
              ], // delays between retries
              toNoInternetPageNavigator: () async {
                // can be used to navigate to offline page or show a dialog.
                // since we don't want to do that in the locator,
                // we just log here.
                debugPrint('No internet - navigate to offline page');
              },
            ),
          ],
        );
        return dio;
      },
    )
    ..registerLazySingleton<Logger>(
      Logger.new,
    );
}
