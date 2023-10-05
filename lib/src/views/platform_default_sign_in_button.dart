import 'package:locator_for_perception/locator_for_perception.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:abstractions/beliefs.dart';

import '../considerations/signing_in_with_apple.dart';

class PlatformDefaultSignInButton<T extends CoreBeliefs>
    extends StatelessWidget {
  const PlatformDefaultSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInWithAppleButton(
      onPressed: () => locate<BeliefSystem<T>>().consider(
        SigningInWithApple<T>(),
      ),
    );
  }
}
