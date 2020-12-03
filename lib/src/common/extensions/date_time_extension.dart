import 'package:date_time_picker/date_time_picker.dart';

extension DateTimeExtension on DateTime {
  String formatar(String pattern) {
    try {
      return new DateFormat(pattern).format(this);
    } catch (e) {
      return null;
    }
  }
}
