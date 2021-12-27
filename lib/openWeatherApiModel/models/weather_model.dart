class OpenWeatherApi {
  final String futureForecast;
  final String cityData;
  final String code;
  final String message;
  final String cnt;

  OpenWeatherApi({
    required this.futureForecast,
    required this.cityData,
    required this.code,
    required this.message,
    required this.cnt
  });

  factory OpenWeatherApi.fromJson(Map<String, dynamic> json) {
    return OpenWeatherApi(
        futureForecast: json['list'], cityData: json['city'],
        code: json['cod'], message: json['message'], cnt: json['cnt']
    );
  }
}