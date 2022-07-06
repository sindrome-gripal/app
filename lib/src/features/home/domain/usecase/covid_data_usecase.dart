import 'package:basearch/src/features/home/data/repository/covid_data_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../model/covid_data.dart';


class CovidDataUseCase {
  final repository = Modular.get<RequestCasesRepository>();

  Future get(String uf, String municipio) async {
      return repository.get(CovidData(uf, municipio: municipio));
  }
}
