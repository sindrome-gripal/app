

class SignUpUser {
  const SignUpUser(
    this.name, 
    this.fullName, 
    this.username, 
    this.password, 
    this.passwordConfirm
  );
  
  final String name;
  final String fullName;
  final String username;
  final String password;
  final String passwordConfirm;


  factory SignUpUser.fromJson(Map<String, dynamic> json) =>
    SignUpUser(
      json['name'], 
      json['fullName'], 
      json['username'], 
      json['password'], 
      json['password_confirm'],
    );
}
