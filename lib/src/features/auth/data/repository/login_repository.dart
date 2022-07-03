import 'package:dio/dio.dart';

import '../dto/user_dto.dart';
import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';


class LoginRepository implements ILogin {
  

  @override
  Future<User> login(User user) async {
    final userDto = UserDto.fromDomain(user);
    var response = await Dio().post(
      'https://fit-works-api.herokuapp.com/api/v1/auth/login', 
      data: userDto.toFormData()
    );
   
    if(response.statusCode == 200) {
      final token = response.data['access_token'];
      final domain = User(user.username, '', token: token);
      print("Request login ok\n");
      return Future.value(domain);

    } else {
      print("Request login fail\n");
      throw Exception('Incorrect username or password!');
    }

  }
}
