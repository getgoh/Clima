// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResponse _$WeatherApiResponseFromJson(Map<String, dynamic> json) {
  return WeatherApiResponse()
    ..cnt = json['cnt'] as int
    ..city = json['city'] == null
        ? null
        : CityResponse.fromJson(json['city'] as Map<String, dynamic>)
    ..list = (json['list'] as List)
        ?.map((e) =>
            e == null ? null : ForecastItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$WeatherApiResponseToJson(WeatherApiResponse instance) =>
    <String, dynamic>{
      'cnt': instance.cnt,
      'city': instance.city,
      'list': instance.list,
    };

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) {
  return CityResponse()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..coord = json['coord'] == null
        ? null
        : CoordinateResponse.fromJson(json['coord'] as Map<String, dynamic>)
    ..country = json['country'] as String
    ..population = json['population'] as int
    ..timezone = json['timezone'] as int
    ..sunrise = json['sunrise'] as int
    ..sunset = json['sunset'] as int;
}

Map<String, dynamic> _$CityResponseToJson(CityResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

CoordinateResponse _$CoordinateResponseFromJson(Map<String, dynamic> json) {
  return CoordinateResponse()
    ..lat = (json['lat'] as num)?.toDouble()
    ..lang = (json['lang'] as num)?.toDouble();
}

Map<String, dynamic> _$CoordinateResponseToJson(CoordinateResponse instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lang': instance.lang,
    };

ForecastItem _$ForecastItemFromJson(Map<String, dynamic> json) {
  return ForecastItem()
    ..dt = json['dt'] as int
    ..main = json['main'] == null
        ? null
        : ForecastItemMain.fromJson(json['main'] as Map<String, dynamic>)
    ..weather = (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : ForecastItemWeatherItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dt_txt = json['dt_txt'] as String;
}

Map<String, dynamic> _$ForecastItemToJson(ForecastItem instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'dt_txt': instance.dt_txt,
    };

ForecastItemWeatherItem _$ForecastItemWeatherItemFromJson(
    Map<String, dynamic> json) {
  return ForecastItemWeatherItem()
    ..id = json['id'] as int
    ..main = json['main'] as String
    ..description = json['description'] as String
    ..icon = json['icon'] as String;
}

Map<String, dynamic> _$ForecastItemWeatherItemToJson(
        ForecastItemWeatherItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

ForecastItemMain _$ForecastItemMainFromJson(Map<String, dynamic> json) {
  return ForecastItemMain()
    ..temp = (json['temp'] as num)?.toDouble()
    ..feels_like = (json['feels_like'] as num)?.toDouble()
    ..temp_min = (json['temp_min'] as num)?.toDouble()
    ..temp_max = (json['temp_max'] as num)?.toDouble()
    ..pressure = json['pressure'] as int
    ..sea_level = json['sea_level'] as int
    ..grnd_level = json['grnd_level'] as int
    ..humidity = json['humidity'] as int
    ..temp_kf = (json['temp_kf'] as num)?.toDouble();
}

Map<String, dynamic> _$ForecastItemMainToJson(ForecastItemMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'sea_level': instance.sea_level,
      'grnd_level': instance.grnd_level,
      'humidity': instance.humidity,
      'temp_kf': instance.temp_kf,
    };
