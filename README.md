# Clima ☁

Clima Project from the Complete Flutter Development Bootcamp https://www.appbrewery.co, with customization (Forecast screen).

## Customization

The following is my added implementation.

![](clima.gif)

- Added Forecast screen.
- Implemented/consumed OpenWeatherMap's 5day/3hour API (https://openweathermap.org/forecast5).
- Generated classes from the API's response signature and deserialized JSON response into the local classes (json_annotation, json_serializable, build_runner packages).
- Used OpenWeatherMap's icons, but used different image for "sunny day", and changed icon color for "snow" to white.
- Implemented ListView header rows (dayOfWeek, month date).
