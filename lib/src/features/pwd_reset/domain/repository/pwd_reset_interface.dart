import '../model/pwd_reset_data.dart';


abstract class IPasswordReset {
  Future<bool> reset(PasswordReset passwordResetData);
}

abstract class IConfirmPasswordReset {
  Future<bool> confirm(ConfirmPasswordReset confirmData);
}

abstract class ISolicitationPasswordReset {
  Future<bool> solicitation(SolicitationPasswordReset solicitationData);
}
