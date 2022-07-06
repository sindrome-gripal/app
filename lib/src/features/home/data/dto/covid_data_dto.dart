import 'package:basearch/src/features/home/domain/model/covid_data.dart';
import 'package:dio/dio.dart';

class CovidDataDto {
  const CovidDataDto(this.uf, {this.municipio});

  final String uf;
  final String? municipio;

  factory CovidDataDto.fromDomain(CovidData covidData) =>
      CovidDataDto(covidData.uf, municipio: covidData.municipio);

  factory CovidDataDto.fromJson(Map<String, dynamic> json) =>
      CovidDataDto(json['uf'], municipio: json['municipio']);

  Map<String, dynamic> toJson() => {'uf': uf, 'municipio': municipio};

  FormData toFormData() => FormData.fromMap({'uf': uf, 'municipio': municipio});
}
