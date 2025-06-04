import 'package:easy_localization/easy_localization.dart';

extension DateFormatting on DateTime {
  /// Formats the DateTime to 'dd MMMM yyyy'.
  /// If a locale is provided, it will format according to that locale.
  String format([String locale = 'en']) {
    return DateFormat('dd MMMM yyyy', locale).format(this);
  }

  /// Reset everything except day, month and year.
  DateTime get clearDate => copyWith(
        hour: 0,
        minute: 0,
        second: 0,
        microsecond: 0,
        millisecond: 0,
      );
}

extension StringToDate on String? {
  DateTime parseDate([String locale = 'en']) {
    if (this == null) return DateTime.now();
    try {
      return DateFormat('dd MMMM yyyy', locale).parse(this!);
    } catch (e) {
      return DateTime.now();
    }
  }
}

extension NullableDateTimeFormatting on DateTime? {
  String formatNullableDate([String locale = 'en']) {
    if (this == null) return "";
    return DateFormat('dd MMMM yyyy', locale).format(this!);
  }
}

extension DeadlineExtensions on DateTime {
  // Method to check if a deadline has passed
  bool get hasDeadlinePassed {
    // Get today's date
    DateTime today = DateTime.now();

    // Get yesterday's date by subtracting one day from today
    DateTime yesterday = today.subtract(const Duration(days: 1));

    // Compare the deadline with yesterday
    if (isBefore(yesterday) || isAtSameMomentAs(yesterday)) {
      return true; // Deadline has passed (yesterday or earlier)
    }

    return false; // Deadline has not passed
  }
}
