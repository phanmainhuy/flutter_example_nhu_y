void main() {
  String input = '2024-01-01 00:00:00';

  dynamic result = formatIsoDatetime(input);

  print(result);
}

String? formatIsoDatetime(String? input) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  DateTime dateTime;
  if (input == '' || input == null) {
    return input;
  }
  try {
    if (input.contains('Z')) {
      dateTime = DateTime.parse(input);
      return dateTime
          .toLocal()
          .toString()
          .split('.')
          .first
          .replaceAll('T', ' ');
    } else {
      dateTime = DateTime.parse(input.replaceAll(' ', 'T') + 'Z');
      return dateTime.toUtc().toIso8601String();
    }
  } catch (e) {
    print(e);
    return input;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
