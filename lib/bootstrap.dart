import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:raba_mobile/src/core/enums/environment.dart';
import 'package:raba_mobile/src/di/locator.dart';
import 'package:raba_mobile/src/services/local_storage_service.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({
  required FutureOr<Widget> Function() builder,
  required Environment environment,
}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await initLocator();
  // Load environment file if present. If missing, log and continue so
  // development runs don't crash when env files are not checked into VCS.
  try {
    await dotenv.load(fileName: environment.envFileName);
  } catch (e, st) {
    // flutter_dotenv throws when the file isn't found; don't let that
    // terminate the app. Log so developers can create the file if needed.
    log('Could not load env file `${environment.envFileName}`: $e',
        stackTrace: st);
  }
  await Hive.initFlutter();
  await locator<LocalStorageService>().initDB();
  runApp(await builder());
}
