import 'package:basearch/src/features/pwd_reset/data/dto/solicitation_dto.dart';
import 'package:basearch/src/features/pwd_reset/domain/repository/pwd_reset_interface.dart';
import 'package:dio/dio.dart';

import '../../domain/model/pwd_reset_data.dart';
 

class PasswordSolicitationResetRepository implements ISolicitationPasswordReset {
  
  @override
  Future<bool> solicitation(SolicitationPasswordReset solicitationData) async {
    final dataDto = SolicitationPasswordDto.fromDomain(solicitationData);

    var response = await Dio().post(
      'https://fit-works-api.herokuapp.com/api/v1/reset-pwd/reset-solicitation/', 
      data: dataDto.toJson()
    );

    if(response.statusCode == 200) {
      print("Request solicitation reset ok.\n");
      return true;

    } else {
      print("Request solicitation reset fail.\n");
      throw Exception('Error connection to API.');
    }

  }
}
