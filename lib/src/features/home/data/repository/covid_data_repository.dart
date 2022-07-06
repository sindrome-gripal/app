import 'dart:convert';

import 'package:dio/dio.dart';

import '../dto/covid_data_dto.dart';
import '../../domain/model/covid_data.dart';
import '../../domain/repository/covid_data_interface.dart';


class RequestCasesRepository implements ICovidData {
  
  @override
  Future<Map> get(CovidData covidData) async {
    final covidReqDto = CovidDataDto.fromDomain(covidData);

    var response = await Dio().post(
      'https://sindrome-gripal-api.herokuapp.com/api/v1/sindrome-gripal/casos/', 
      data: covidReqDto.toJson()
    );
   
    if(response.statusCode == 200) {
      return response.data;

    } else {
      // ignore: avoid_print
      print("Fail to get data\n");
      throw Exception('Fail to get data');
    }

  }
}
