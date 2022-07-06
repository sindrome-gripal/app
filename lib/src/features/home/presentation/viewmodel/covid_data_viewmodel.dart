import 'package:basearch/src/features/home/domain/usecase/covid_data_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';


part 'covid_data_viewmodel.g.dart';


class CovidDataViewModel = _CovidDataViewModelBase with _$CovidDataViewModel;

abstract class _CovidDataViewModelBase with Store {
  final _usecase = Modular.get<CovidDataUseCase>();

  // flutter pub run build_runner build

  @observable
  String uf = 'df';

  @observable
  String municipio = '';

  @observable
  bool isLoading = false;
  
  @observable
  bool isLogged = false;
  
  
  @observable
  Map data = {};
  

  final TextEditingController ufController = TextEditingController();
  final TextEditingController municipioController = TextEditingController();

  get() {

    try {
      var ans;
      _usecase.get(uf, municipio).then((value) => {data = value});
      // print(ans);
      // return data;
    
    } on Exception {
      print('Erro ao tentar requisitar os dados.');
    
    } finally {
      isLoading = false;
      // ignore: control_flow_in_finally
      // return {"error": "no data"};
    }
  }
}
