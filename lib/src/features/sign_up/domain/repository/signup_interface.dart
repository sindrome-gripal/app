import '../model/signup_data.dart';

abstract class ISignUp {
  Future<SignUpUser> signUp(SignUpUser signUpData);
}
