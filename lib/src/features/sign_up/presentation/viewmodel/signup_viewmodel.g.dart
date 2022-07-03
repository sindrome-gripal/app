// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpViewModel on _SignUpViewModelBase, Store {
  final _$nameAtom = Atom(name: '_SignUpViewModelBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$fullNameAtom = Atom(name: '_SignUpViewModelBase.fullName');

  @override
  String get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(String value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  final _$usernameAtom = Atom(name: '_SignUpViewModelBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpViewModelBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordConfimAtom =
      Atom(name: '_SignUpViewModelBase.passwordConfim');

  @override
  String get passwordConfim {
    _$passwordConfimAtom.reportRead();
    return super.passwordConfim;
  }

  @override
  set passwordConfim(String value) {
    _$passwordConfimAtom.reportWrite(value, super.passwordConfim, () {
      super.passwordConfim = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_SignUpViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isCreatedAtom = Atom(name: '_SignUpViewModelBase.isCreated');

  @override
  bool get isCreated {
    _$isCreatedAtom.reportRead();
    return super.isCreated;
  }

  @override
  set isCreated(bool value) {
    _$isCreatedAtom.reportWrite(value, super.isCreated, () {
      super.isCreated = value;
    });
  }

  final _$_SignUpViewModelBaseActionController =
      ActionController(name: '_SignUpViewModelBase');

  @override
  void validateUsername() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
fullName: ${fullName},
username: ${username},
password: ${password},
passwordConfim: ${passwordConfim},
isLoading: ${isLoading},
isCreated: ${isCreated}
    ''';
  }
}

mixin _$SignUpError on _SignUpErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_SignUpErrorBase.hasErrors'))
          .value;

  final _$nameAtom = Atom(name: '_SignUpErrorBase.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$fullNameAtom = Atom(name: '_SignUpErrorBase.fullName');

  @override
  String? get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(String? value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  final _$usernameAtom = Atom(name: '_SignUpErrorBase.username');

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpErrorBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordConfimAtom = Atom(name: '_SignUpErrorBase.passwordConfim');

  @override
  String? get passwordConfim {
    _$passwordConfimAtom.reportRead();
    return super.passwordConfim;
  }

  @override
  set passwordConfim(String? value) {
    _$passwordConfimAtom.reportWrite(value, super.passwordConfim, () {
      super.passwordConfim = value;
    });
  }

  final _$loginAtom = Atom(name: '_SignUpErrorBase.login');

  @override
  String? get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String? value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
fullName: ${fullName},
username: ${username},
password: ${password},
passwordConfim: ${passwordConfim},
login: ${login},
hasErrors: ${hasErrors}
    ''';
  }
}
