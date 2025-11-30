import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:raba_mobile/src/core/constants/app_env.dart';
import 'package:raba_mobile/src/core/networking/interceptors/dio_interceptors.dart';
import 'package:raba_mobile/src/services/local_storage_service.dart';
import 'package:raba_mobile/src/services/user_storage_service.dart';

part 'client_locator.dart';
part 'data_source_locator.dart';
part 'external_locator.dart';
part 'repository_locator.dart';
part 'service_locator.dart';
part 'use_case_locator.dart';

final GetIt locator = GetIt.instance;

Future<void> initLocator() async {
  _initExternal();
  _initClients();
  _initDataSource();
  await _initRepositoryLocator();
  await _initUseCaseLocator();
  _initServices();
}
