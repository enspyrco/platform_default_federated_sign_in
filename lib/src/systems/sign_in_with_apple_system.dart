import 'package:platform_default_sign_in_for_perception/src/utils/sign_in_with_apple_wrapper.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SignInWithAppleSystem {
  SignInWithAppleSystem({SignInWithAppleWrapper? plugin})
      : _plugin = plugin ?? const SignInWithAppleWrapper();

  final SignInWithAppleWrapper _plugin;

  Future<String> signIn() async {
    final AuthorizationCredentialAppleID credential =
        await _plugin.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    return credential.identityToken ??
        (throw 'The credential.identityToken variable was null');
  }
}
