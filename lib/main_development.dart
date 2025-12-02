import 'package:raba_mobile/bootstrap.dart';
import 'package:raba_mobile/src/app/page/app.dart';
import 'package:raba_mobile/src/core/enums/enums.dart';
import 'package:raba_mobile/features/feature0/onboarding/presentation/pages/onboarding_page.dart';

Future<void> main() async {
  await bootstrap(
    builder: () => App(initialPage: const OnboardingPage()),
    environment: Environment.development,
  );
}
