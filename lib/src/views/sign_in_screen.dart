import 'package:percepts/percepts.dart';
import 'package:flutter/material.dart';
import 'package:platform_default_sign_in_for_perception/platform_default_sign_in_for_perception.dart';
import 'package:types_for_auth/types_for_auth.dart';
import 'package:abstractions/beliefs.dart';

class SignInScreen<T extends CoreBeliefs> extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamOfConsciousness<T, SignedInState>(
        infer: (state) =>
            (state as dynamic).identity.userAuthState.signedIn as SignedInState,
        builder: (context, signedInState) {
          if (signedInState == SignedInState.notSignedIn) {
            return PlatformDefaultSignInButton<T>();
          }
          return const CircularProgressIndicator();
        });
  }
}
