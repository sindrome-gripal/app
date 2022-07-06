// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_data_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CovidDataViewModel on _CovidDataViewModelBase, Store {
  final _$ufAtom = Atom(name: '_CovidDataViewModelBase.uf');

  @override
  String get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  final _$municipioAtom = Atom(name: '_CovidDataViewModelBase.municipio');

  @override
  String get municipio {
    _$municipioAtom.reportRead();
    return super.municipio;
  }

  @override
  set municipio(String value) {
    _$municipioAtom.reportWrite(value, super.municipio, () {
      super.municipio = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_CovidDataViewModelBase.isLoading');

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

  final _$isLoggedAtom = Atom(name: '_CovidDataViewModelBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  @override
  String toString() {
    return '''
uf: ${uf},
municipio: ${municipio},
isLoading: ${isLoading},
isLogged: ${isLogged}
    ''';
  }
}
