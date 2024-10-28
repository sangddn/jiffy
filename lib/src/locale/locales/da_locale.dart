import '../../enums/start_of_week.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class DaLocale extends Locale {
  @override
  String code() => 'da';

  @override
  List<String> ordinals() =>
      List.from(['.'], growable: false); // Danish does not use st, nd, rd, etc.

  @override
  StartOfWeek startOfWeek() => StartOfWeek.monday;

  @override
  RelativeDateTime relativeDateTime() => DaRelativeTime();
}

class DaDkLocale extends DaLocale {
  @override
  String code() => 'da_dk';
}

class DaRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => 'for';
  @override
  String prefixFromNow() => 'om';
  @override
  String suffixAgo() => 'siden';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'få sekunder';
  @override
  String aboutAMinute(int minutes) => 'et minut';
  @override
  String minutes(int minutes) => '$minutes minutter';
  @override
  String aboutAnHour(int minutes) => 'en time';
  @override
  String hours(int hours) => '$hours timer';
  @override
  String aDay(int hours) => 'en dag';
  @override
  String days(int days) => '$days dage';
  @override
  String aboutAMonth(int days) => 'en måned';
  @override
  String months(int months) => '$months måneder';
  @override
  String aboutAYear(int year) => 'et år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}
