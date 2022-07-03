import 'package:dio/dio.dart';
import 'package:basearch/src/features/sign_up/domain/model/signup_data.dart';


class SignUpUserDto {
  const SignUpUserDto(
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

  factory SignUpUserDto.fromDomain(SignUpUser signUpUser) =>
    SignUpUserDto(
      signUpUser.name, 
      signUpUser.fullName, 
      signUpUser.username, 
      signUpUser.password, 
      signUpUser.passwordConfirm
    );
  

  factory SignUpUserDto.fromJson(Map<String, dynamic> json) =>
    SignUpUserDto(
      json['name'], 
      json['full_name'], 
      json['username'], 
      json['password'],
      json['password_confirm']
    );
    

  Map<String, dynamic> toJson() =>
    {
      'name': name, 
      'full_name': fullName, 
      'username': username, 
      'password': password, 
      'password_confirm': passwordConfirm,
      'email': username
    };
  

  FormData toFormData() =>
    FormData.fromMap({
      'name': name, 
      'full_name': fullName, 
      'username': username, 
      'password': password,
      'password_confirm': passwordConfirm,
      'email': username  
    });

}
