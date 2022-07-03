// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitation_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SolicitationViewModel on _SolicitationViewModelBase, Store {
  final _$usernameAtom = Atom(name: '_SolicitationViewModelBase.username');

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

  final _$isLoadingAtom = Atom(name: '_SolicitationViewModelBase.isLoading');

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

  final _$solicitationOkAtom =
      Atom(name: '_SolicitationViewModelBase.solicitationOk');

  @override
  bool get solicitationOk {
    _$solicitationOkAtom.reportRead();
    return super.solicitationOk;
  }

  @override
  set solicitationOk(bool value) {
    _$solicitationOkAtom.reportWrite(value, super.solicitationOk, () {
      super.solicitationOk = value;
    });
  }

  final _$_SolicitationViewModelBaseActionController =
      ActionController(name: '_SolicitationViewModelBase');

  @override
  void validateUsername() {
    final _$actionInfo = _$_SolicitationViewModelBaseActionController
        .startAction(name: '_SolicitationViewModelBase.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_SolicitationViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
isLoading: ${isLoading},
solicitationOk: ${solicitationOk}
    ''';
  }
}

mixin _$SolicitationError on _SolicitationErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_SolicitationErrorBase.hasErrors'))
          .value;

  final _$usernameAtom = Atom(name: '_SolicitationErrorBase.username');

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

  @override
  String toString() {
    return '''
username: ${username},
hasErrors: ${hasErrors}
    ''';
  }
}
