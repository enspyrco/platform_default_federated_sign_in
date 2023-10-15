library platform_default_sign_in_for_perception;

import 'package:abstractions/beliefs.dart';
import 'package:apple_sign_in_for_perception/apple_sign_in_for_perception.dart';

export 'src/views/platform_default_sign_in_button.dart';

void initializePlatformDefaultSignIn<S extends CoreBeliefs>({
  List<Consideration<S>>? considerOnProviderSignedIn,
  List<Conclusion<S>>? concludeOnProviderSignedIn,
  List<Consideration<S>>? considerOnProviderSignedOut,
  List<Conclusion<S>>? concludeOnProviderSignedOut,
}) {
  initializeAppleSignIn<S>(
    considerOnSignedIn: considerOnProviderSignedIn,
    concludeOnSignedIn: concludeOnProviderSignedIn,
    considerOnSignedOut: considerOnProviderSignedOut,
    concludeOnSignedOut: concludeOnProviderSignedOut,
  );
}
