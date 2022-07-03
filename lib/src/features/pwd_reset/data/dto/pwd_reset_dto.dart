import 'package:basearch/src/features/pwd_reset/domain/model/pwd_reset_data.dart';
import 'package:dio/dio.dart';


class RequestResetPasswordDto {
  const RequestResetPasswordDto(
    this.name, 
    this.username, 
    this.password, 
  );

  final String name;
  final String username;
  final String password;


  factory RequestResetPasswordDto.fromDomain(PasswordReset passwordResetData) =>
    RequestResetPasswordDto(
      passwordResetData.name, 
      passwordResetData.username, 
      passwordResetData.password, 
    );
  

  factory RequestResetPasswordDto.fromJson(Map<String, dynamic> json) =>
    RequestResetPasswordDto(
      json['name'], 
      json['username'], 
      json['password'], 
    );
    

  Map<String, dynamic> toJson() =>
    {
      'name': name, 
      'username': username, 
      'password': password,
      'email': username,
    };
  

  FormData toFormData() =>
    FormData.fromMap({
      'name': name, 
      'username': username, 
      'password': password,
      'email': username,
    });

}
