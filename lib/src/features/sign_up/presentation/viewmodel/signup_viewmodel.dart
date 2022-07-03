import 'package:basearch/src/features/sign_up/domain/use_case/signup_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';


part 'signup_viewmodel.g.dart';


class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store {
  final error = SignUpError();
  final _usecase = Modular.get<SignUpUseCase>();

  // flutter pub run build_runner build

  @observable
  String name = '';
  
  @observable
  String fullName = '';
  
  @observable
  String username = '';

  @observable
  String password = '';
  
  @observable
  String passwordConfim = '';

  @observable
  bool isLoading = false;
  
  @observable
  bool isCreated = false;


   @action 
  void validateUsername() =>
    error.username = _usecase.validateUsername(username);
  

  @action
  void validatePassword() =>
    error.password = _usecase.validatePassword(password, passwordConfim);
  

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void createAccount() async {
    error.clear();

    // validateUsername();
    // validatePassword();

    print(error.hasErrors);
    if (!error.hasErrors) {
      isLoading = true;
      try {
        await _usecase.signUp(
            name, 
            fullName, 
            username, 
            password,
            passwordConfim
          );
        isCreated = true;
      } on Exception {
        error.login = 'Erro ao tentar criar usuário.';
        print('Erro ao tentar criar usuário.');
      } finally {
        isLoading = false;
      }
    }
  }
}



class SignUpError = _SignUpErrorBase with _$SignUpError;

abstract class _SignUpErrorBase with Store {
  @observable
  String? name = '';
  
  @observable
  String? fullName = '';

  @observable
  String? username;

  @observable
  String? password;

  @observable
  String? passwordConfim = '';

  @observable
  String? login;

  @computed
  bool get hasErrors => name != null || fullName != null || username != null || password != null || passwordConfim != null || login != null;

  void clear() {
    name = null;
    fullName = null;
    username = null;
    password = null;
    passwordConfim = null;
    login = null;
  }
}
