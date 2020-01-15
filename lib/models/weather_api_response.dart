import 'package:json_annotation/json_annotation.dart';

part 'weather_api_response.g.dart';

@JsonSerializable()
class WeatherApiResponse {
  WeatherApiResponse();

  int cnt;
  CityResponse city;
  List<ForecastItem> list;

  factory WeatherApiResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherApiResponseToJson(this);
}

@JsonSerializable()
class CityResponse {
  CityResponse();

  int id;
  String name;
  CoordinateResponse coord;
  String country;
  int population;
  int timezone;
  int sunrise;
  int sunset;

  factory CityResponse.fromJson(Map<String, dynamic> json) =>
      _$CityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CityResponseToJson(this);
}

@JsonSerializable()
class CoordinateResponse {
  CoordinateResponse();

  double lat;
  double lang;

  factory CoordinateResponse.fromJson(Map<String, dynamic> json) =>
      _$CoordinateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinateResponseToJson(this);
}

@JsonSerializable()
class ForecastItem {
  ForecastItem();

  int dt;
  ForecastItemMain main;
  List<ForecastItemWeatherItem> weather;
  String dt_txt;

  factory ForecastItem.fromJson(Map<String, dynamic> json) =>
      _$ForecastItemFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastItemToJson(this);
}

@JsonSerializable()
class ForecastItemWeatherItem {
  ForecastItemWeatherItem();

  int id;
  String main;
  String description;
  String icon;

  factory ForecastItemWeatherItem.fromJson(Map<String, dynamic> json) =>
      _$ForecastItemWeatherItemFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastItemWeatherItemToJson(this);
}

@JsonSerializable()
class ForecastItemMain {
  ForecastItemMain();

  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int sea_level;
  int grnd_level;
  int humidity;
  double temp_kf;

  factory ForecastItemMain.fromJson(Map<String, dynamic> json) =>
      _$ForecastItemMainFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastItemMainToJson(this);
}
