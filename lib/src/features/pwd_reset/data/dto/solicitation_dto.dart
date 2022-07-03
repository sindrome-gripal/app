import 'package:basearch/src/features/pwd_reset/domain/model/pwd_reset_data.dart';
import 'package:dio/dio.dart';


class SolicitationPasswordDto {
  const SolicitationPasswordDto(
    this.username, 
  );

  final String username;


  factory SolicitationPasswordDto.fromDomain(SolicitationPasswordReset solicitationData) =>
    SolicitationPasswordDto(
      solicitationData.username, 
    );
  

  factory SolicitationPasswordDto.fromJson(Map<String, dynamic> json) =>
    SolicitationPasswordDto(
      json['username'], 
    );
    

  Map<String, dynamic> toJson() =>
    {
      'username': username, 
    };
  

  FormData toFormData() =>
    FormData.fromMap({
      'username': username, 
    });

}
