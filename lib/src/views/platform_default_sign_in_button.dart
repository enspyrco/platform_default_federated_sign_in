import 'package:flutter/widgets.dart';
import 'package:abstractions/beliefs.dart';
import 'package:apple_sign_in_for_perception/apple_sign_in_for_perception.dart';

class PlatformDefaultSignInButton<T extends CoreBeliefs>
    extends StatelessWidget {
  const PlatformDefaultSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppleSignInButton();
  }
}
