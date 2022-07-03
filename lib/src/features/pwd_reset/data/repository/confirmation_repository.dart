import 'package:basearch/src/features/pwd_reset/data/dto/confirmation_dto.dart';
import 'package:basearch/src/features/pwd_reset/domain/repository/pwd_reset_interface.dart';
import 'package:dio/dio.dart';

import '../../domain/model/pwd_reset_data.dart';


class PasswordConfirmatitonResetRepository implements IConfirmPasswordReset {
  
  @override
  Future<bool> confirm(ConfirmPasswordReset confirmationData) async {
    final dataDto = ConfirmationPasswordDto.fromDomain(confirmationData);

    var response = await Dio().post(
      'https://fit-works-api.herokuapp.com/api/v1/reset-pwd/reset-confirmation/', 
      data: dataDto.toJson()
    );
   
    if(response.statusCode == 201) { 
      print("Request confirmation reset password ok.\n");
      print(response.data);
      return true;

    } else {
      print("Request confirmation reset password fail.\n");
      throw Exception('Error connection to API.');
    }
  }
}
