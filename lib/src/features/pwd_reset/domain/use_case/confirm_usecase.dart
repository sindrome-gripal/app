import 'package:basearch/src/features/pwd_reset/data/repository/confirmation_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../model/pwd_reset_data.dart';


class PasswordConfirmResetUseCase {
  final reset = Modular.get<PasswordConfirmatitonResetRepository>();

  
  String? validateUsername(String username) { 
    if (username.isEmpty) {
      return 'username_required'.i18n();
    } else if (isValidateEmail(username) != true) {
      return 'invalid_email'.i18n();
    }
    return null;
  } 

  Future<bool> solicitation(
    String username, 
    String hashValidator, 
  ) async {
    return reset.confirm(
       ConfirmPasswordReset(
          username, 
          hashValidator
      )
    );
  }
}



bool isValidateEmail(String email) {  
  String souce = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(souce);
  return regExp.hasMatch(email);
}
