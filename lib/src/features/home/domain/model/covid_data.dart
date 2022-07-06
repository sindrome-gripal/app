

class CovidData {
  const CovidData(this.uf, {this.municipio});
  
  final String uf;
  final String? municipio;


  factory CovidData.fromJson(Map<String, dynamic> json) =>
    CovidData(json['uf'], municipio: json['municipio']);
}
