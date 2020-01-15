import 'package:clima/models/weather_api_response.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Forecast extends StatefulWidget {
  Forecast({this.weatherData});

  final weatherData;

  @override
  _ForecastState createState() => _ForecastState();
}

class _ForecastState extends State<Forecast> {
  WeatherApiResponse resp;
  String currDayOfWeek;
  String prevDayOfWeek;

  int indexOffset = 0;

  @override
  void initState() {
    super.initState();

    getWeatherData();
  }

  void getWeatherData() {
    resp = WeatherApiResponse.fromJson(widget.weatherData);
    DateTime dt = Utils().strToDateTime(resp.list[0].dt_txt);
    currDayOfWeek = DateFormat('EEEE').format(dt);
  }

  Image _buildImage(int index) {
    String imgUrl =
        'http://openweathermap.org/img/wn/${resp.list[index].weather[0].icon}@2x.png';

    Color imgColor;
    if (resp.list[index].weather[0].icon.substring(0, 2) == '13') {
      imgColor = Colors.white;
    }

    ImageProvider currImgProvider;
    double imgWidth = 60.0;

    if (resp.list[index].weather[0].icon.substring(0, 2) == '01') {
      currImgProvider = AssetImage('images/sun.png');
      imgWidth = 30.0;
    } else {
      currImgProvider = NetworkImage(imgUrl);
    }

    return Image(
      color: imgColor,
      height: imgWidth,
      width: imgWidth,
      image: currImgProvider,
    );
  }

  _buildRow(BuildContext context, int index) {
    DateTime dt = Utils().strToDateTime(resp.list[index].dt_txt);
    String dayOfWeek = DateFormat('EEEE, MMM d').format(dt);

    String timeOfDay = DateFormat('j').format(dt);
    String temp = resp.list[index].main.temp.toInt().toString();
    String feelsLikeStr =
        'feels like ${resp.list[index].main.feels_like.toStringAsFixed(0)}°c';

    Image currImg = _buildImage(index);

    // initialize headerRow as empty widget
    Widget headerRow = SizedBox();
    // add dayofweek and month/date as header
    if (currDayOfWeek != dayOfWeek || index == 0) {
      currDayOfWeek = dayOfWeek;
      headerRow = Container(
        margin: EdgeInsets.only(top: 12.0, left: 4.0, bottom: 6.0),
        child: Text(
          dayOfWeek,
          style: kForecastDayOfWeekTextStyle,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        headerRow,
        Container(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 6, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    child: Text(
                      timeOfDay,
                      style: kForecastDarkTextStyle,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$temp°c',
                        style: kForecastTemperatureTextStyle,
                      ),
                      Text(
                        feelsLikeStr,
                        style: kForecastDarkTextStyle,
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: kForecastRowImageBGBackDecoration,
                      child: Center(child: currImg),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    getWeatherData(); // for test/dev mode
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather forecast for\n${resp.city.name}',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Column(
            children: <Widget>[
              Expanded(
//                flex: 9,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: resp.list.length,
                  itemBuilder: (context, index) => _buildRow(context, index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
