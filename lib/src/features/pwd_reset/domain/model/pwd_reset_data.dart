

class PasswordReset {
  const PasswordReset(
    this.name,
    this.username,
    this.password
  );
  
  final String name;
  final String username;
  final String password;

  factory PasswordReset.fromJson(Map<String, dynamic> json) =>
    PasswordReset(
      json['name'], 
      json['username'], 
      json['password'], 
    );
}



class ConfirmPasswordReset {
  const ConfirmPasswordReset(
    this.username,
    this.hashValidator
  );
  
  final String username;
  final String hashValidator;

  factory ConfirmPasswordReset.fromJson(Map<String, dynamic> json) =>
    ConfirmPasswordReset(
      json['username'], 
      json['hash_validator'], 
    );
}



class SolicitationPasswordReset {
  const SolicitationPasswordReset(
    this.username
  );
  
  final String username;

  factory SolicitationPasswordReset.fromJson(Map<String, dynamic> json) =>
    SolicitationPasswordReset(
      json['username'], 
    );
}
