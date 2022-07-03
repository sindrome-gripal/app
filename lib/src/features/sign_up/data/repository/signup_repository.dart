import 'package:dio/dio.dart';

import '../dto/user_signup_data_dto.dart';
import '../../domain/model/signup_data.dart';
import '../../domain/repository/signup_interface.dart';


class SignUpRepository implements ISignUp {
  

  @override
  Future<SignUpUser> signUp(SignUpUser signUpData) async {
    final userDto = SignUpUserDto.fromDomain(signUpData);

    var response = await Dio().post(
      'https://fit-works-api.herokuapp.com/api/v1/sign-up/', 
      data: userDto.toJson()
    );
   
    if(response.statusCode == 201) {
      print("Request sign up ok\n");
      print(response.data);
      return Future.value(signUpData);

    } else {
      print("Request sign up fail\n");
      throw Exception('Error connection to API.');
    }

  }
}
