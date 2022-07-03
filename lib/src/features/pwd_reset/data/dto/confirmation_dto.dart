import 'package:basearch/src/features/pwd_reset/domain/model/pwd_reset_data.dart';
import 'package:dio/dio.dart';


class ConfirmationPasswordDto {
  const ConfirmationPasswordDto(
    this.username, 
    this.hashValidator, 
  );

  final String username;
  final String hashValidator;


  factory ConfirmationPasswordDto.fromDomain(ConfirmPasswordReset confirmationData) =>
    ConfirmationPasswordDto(
      confirmationData.username, 
      confirmationData.hashValidator, 
    );
  

  factory ConfirmationPasswordDto.fromJson(Map<String, dynamic> json) =>
    ConfirmationPasswordDto(
      json['username'], 
      json['hash_validator'], 
    );
    

  Map<String, dynamic> toJson() =>
    {
      'username': username, 
      'hash_validator': hashValidator
    };
  

  FormData toFormData() =>
    FormData.fromMap({
      'username': username, 
      'hash_validator': hashValidator  
    });

}
