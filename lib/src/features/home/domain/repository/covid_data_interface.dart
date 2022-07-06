import '../model/covid_data.dart';

abstract class ICovidData {
  Future<Map> get(CovidData covidData);
}
