import '../../enums/start_of_week.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class FiLocale extends Locale {
  @override
  String code() => 'fi';

  @override
  List<String> ordinals() =>
      List.from(['.'], growable: false); // Finnish doesn't use ordinal suffixes

  @override
  StartOfWeek startOfWeek() => StartOfWeek.monday;

  @override
  RelativeDateTime relativeDateTime() => FiRelativeTime();
}

class FiRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'sitten';
  @override
  String suffixFromNow() => 'päästä';
  @override
  String lessThanOneMinute(int seconds) => 'muutama sekunti';
  @override
  String aboutAMinute(int minutes) => 'minuutti';
  @override
  String minutes(int minutes) => '$minutes minuuttia';
  @override
  String aboutAnHour(int minutes) => 'tunti';
  @override
  String hours(int hours) => '$hours tuntia';
  @override
  String aDay(int hours) => 'päivä';
  @override
  String days(int days) => '$days päivää';
  @override
  String aboutAMonth(int days) => 'kuukausi';
  @override
  String months(int months) => '$months kuukautta';
  @override
  String aboutAYear(int year) => 'vuosi';
  @override
  String years(int years) => '$years vuotta';
  @override
  String wordSeparator() => ' ';
}
