import 'package:apple_sign_in_for_perception/apple_sign_in_for_perception.dart';
import 'package:percepts/percepts.dart';
import 'package:platform_default_sign_in_for_perception/src/views/sign_in_screen.dart';

import 'package:test_utils_for_perception/test_utils_for_perception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:types_for_auth/types_for_auth.dart';

void main() {
  group('SignInScreen', () {
    testWidgets('lays out platform appropriate sign in buttons',
        (tester) async {
      // Setup an app state where checking is done and there was no signed in user found.
      final state = ExampleIdentityBeliefs.initial.copyWith(
        identity: DefaultIdentityBeliefs.initial.copyWith(
          userAuthState:
              const DefaultUserAuthState(signedIn: SignedInState.notSignedIn),
        ),
      );

      // Setup a harness with the initial state.
      final harness = WidgetTestHarness<ExampleIdentityBeliefs>(
        initialBeliefs: state,
        innerWidget: const SignInScreen<ExampleIdentityBeliefs>(),
      );

      await tester.pumpWidget(harness.widget);

      expect(find.byType(AppleSignInButton), findsOneWidget);
    });
  });
}
