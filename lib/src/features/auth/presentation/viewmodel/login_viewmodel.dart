import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecase/login_usecase.dart';

part 'login_viewmodel.g.dart';


class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final error = LoginError();
  final _usecase = Modular.get<LoginUseCase>();

  // flutter pub run build_runner build

  @observable
  String username = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;
  
  @observable
  bool isLogged = false;


   @action 
  void validateUsername() =>
    error.username = _usecase.validateUsername(username);
  

  @action
  void validatePassword() =>
    error.password = _usecase.validatePassword(password);
  

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    error.clear();

    // validateUsername();
    // validatePassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        await _usecase.login(username, password);
        isLogged = true;
      } on Exception {
        error.login = 'Erro ao tentar fazer login.';
      } finally {
        isLoading = false;
      }
    }
  }
}



class LoginError = _LoginErrorBase with _$LoginError;

abstract class _LoginErrorBase with Store {
  @observable
  String? username;

  @observable
  String? password;

  @observable
  String? login;

  @computed
  bool get hasErrors => username != null || password != null || login != null;

  void clear() {
    username = null;
    password = null;
    login = null;
  }
}
