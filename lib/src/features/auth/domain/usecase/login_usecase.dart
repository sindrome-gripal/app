import 'package:basearch/src/features/auth/data/repository/login_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../model/user.dart';


class LoginUseCase {
  final repository = Modular.get<LoginRepository>();

  
  String? validateUsername(String username) { 
    if (username.isEmpty) {
      return 'username_required'.i18n();
    } else if (isValidateEmail(username) != true) {
      return 'invalid_email'.i18n();
    }
    return null;
  }  

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'password_required'.i18n();
    } else if (isPasswordStrong(password) != true) {
      return 'password_must_be_strong'.i18n();
    } else if (isPasswordLenghtAcceptable(password) != true) {
      return 'password_invalid_lengh'.i18n();
    }
    return null;
  }


  Future<User> login(String username, String password) async {
     return repository.login(User(username, password));
  }
}



bool isValidateEmail(String email) {  
  String souce = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(souce);
  return regExp.hasMatch(email);
}

bool isPasswordStrong(String password) {
  String source = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = RegExp(source);
  return regExp.hasMatch(password);
}

bool isPasswordLenghtAcceptable(String password) {
  return password.length >= 6 && password.length <= 12;
}