import 'package:raba_mobile/bootstrap.dart';
import 'package:raba_mobile/src/app/page/app.dart';
import 'package:raba_mobile/src/core/enums/enums.dart';

Future<void> main() async {
  await bootstrap(builder: App.new, environment: Environment.development);
}
