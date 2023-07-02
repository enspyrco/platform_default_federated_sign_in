import 'package:locator_for_perception/locator_for_perception.dart';
import 'package:types_for_perception/core_types.dart';
import 'package:types_for_perception/state_types.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class PlatformDefaultSignInButton<T extends AstroState>
    extends StatelessWidget {
  const PlatformDefaultSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInWithAppleButton(
        onPressed: () =>
            locate<MissionControl<T>>().launch(SignInWithApple<T>()));
  }
}
