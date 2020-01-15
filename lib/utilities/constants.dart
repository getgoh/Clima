import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kForecastDarkTextStyle = TextStyle(
  color: Color(0xFF999999),
);

const kForecastTemperatureTextStyle = TextStyle(
  height: 1,
  fontFamily: 'Nunito Sans EB',
  fontSize: 30.0,
);

final kForecastDayOfWeekTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.grey.shade700,
);

final kForecastRowImageBGBackDecoration = BoxDecoration(
  color: Colors.grey[850],
  borderRadius: BorderRadius.circular(30.0),
);
