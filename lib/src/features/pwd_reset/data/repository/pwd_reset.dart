import 'package:basearch/src/features/pwd_reset/data/dto/pwd_reset_dto.dart';
import 'package:basearch/src/features/pwd_reset/domain/repository/pwd_reset_interface.dart';
import 'package:dio/dio.dart';

import '../../domain/model/pwd_reset_data.dart';


class PasswordResetRepository implements IPasswordReset {
  
  @override
  Future<bool> reset(PasswordReset passwordResetData) async {
    final dataDto = RequestResetPasswordDto.fromDomain(passwordResetData);

      // 'https://fit-works-api.herokuapp.com/api/v1/reset-pwd/', 
    var response = await Dio().post(
      'localhost:8000/api/v1/reset-pwd/', 
      data: dataDto.toJson()
    );
   
   print(dataDto.toJson());
    if(response.statusCode == 200) {
      print("Request reset password ok.\n");
      print(response.data);
      return true;

    } else {
      print("Request reset password fail.\n");
      throw Exception('Error connection to API.');
    }

  }
}
