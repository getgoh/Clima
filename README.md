# Clima ☁

Clima Project from the Complete Flutter Development Bootcamp https://www.appbrewery.co, with customization.

Fetches real-time weather data for specified location using [OpenWeather](https://openweathermap.org/)'s API. Added Forecast screen that shows 5day/3hour weather forecast.

## Customization

The following is my added implementation.

![](clima.gif)

- Added Forecast screen.
- Implemented/consumed OpenWeatherMap's 5day/3hour API (https://openweathermap.org/forecast5).
- Generated classes from the API's response signature and deserialized JSON response into the local classes (json_annotation, json_serializable, build_runner packages).
- Used OpenWeatherMap's icons, but used different image for "sunny day", and changed icon color for "snow" to white.
- Implemented ListView header rows (dayOfWeek, month date).

## Packages used
- [geolocator](https://pub.dev/packages/geolocator)
- [http](https://pub.dev/packages/http)
- [flutter_spinkit](https://pub.dev/packages/flutter_spinkit)
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter)
- [json_serializable](https://pub.dev/packages/json_serializable)
- [intl](https://pub.dev/packages/intl)
