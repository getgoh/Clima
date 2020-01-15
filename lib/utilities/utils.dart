import 'package:intl/intl.dart';

class Utils {
  DateTime strToDateTime(String dateStr) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').parse(dateStr);
  }
}
