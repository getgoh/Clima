import 'dart:io';

import 'package:intl/intl.dart';

void main() {
  DateTime dt = strToDateTime('2020-01-15 00:00:00');
  print(DateFormat('EEEE').format(dt));
}

DateTime strToDateTime(String dateStr) {
  return DateFormat('yyyy-MM-dd HH:mm:ss').parse(dateStr);
}

void unixTest() {
  int unixTime = 1579456800;
  DateTime date = DateTime.fromMicrosecondsSinceEpoch(unixTime);
  print(date);
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  String result;
  Duration threeSeconds = Duration(seconds: 3);

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2data');
}
