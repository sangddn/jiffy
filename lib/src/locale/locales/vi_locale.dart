import '../../enums/start_of_week.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class ViLocale extends Locale {
  @override
  String code() => 'vi';

  @override
  List<String> ordinals() =>
      List.from([''], growable: false); // Ordinals are not commonly used in Vietnamese

  @override
  StartOfWeek startOfWeek() => StartOfWeek.monday; // In Vietnam, the week typically starts on Monday

  @override
  RelativeDateTime relativeDateTime() => ViRelativeTime();
}

class ViRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => 'trước';
  @override
  String prefixFromNow() => 'trong';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'vài giây';
  @override
  String aboutAMinute(int minutes) => 'một phút';
  @override
  String minutes(int minutes) => '$minutes phút';
  @override
  String aboutAnHour(int minutes) => 'một giờ';
  @override
  String hours(int hours) => '$hours giờ';
  @override
  String aDay(int hours) => 'một ngày';
  @override
  String days(int days) => '$days ngày';
  @override
  String aboutAMonth(int days) => 'một tháng';
  @override
  String months(int months) => '$months tháng';
  @override
  String aboutAYear(int year) => 'một năm';
  @override
  String years(int years) => '$years năm';
  @override
  String wordSeparator() => ' ';
}
