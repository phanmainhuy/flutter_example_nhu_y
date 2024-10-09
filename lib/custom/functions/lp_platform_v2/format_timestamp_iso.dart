String? formatTimestampISO(String? inputISOTime) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  DateTime dateTime;
  if (inputISOTime == '' || inputISOTime == null) {
    return inputISOTime;
  }
  try {
    if (inputISOTime.contains('Z')) {
      // Parse the input ISO time and convert to local time
      dateTime = DateTime.parse(inputISOTime).toLocal();
    } else {
      // If 'Z' is not present, parse as is and convert to local time
      dateTime =
          DateTime.parse('${inputISOTime.replaceAll(' ', 'T')}Z').toLocal();
    }

    // Manually format the date
    List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];

    String day = dateTime.day.toString().padLeft(2, '0');
    String month = months[dateTime.month - 1];
    String year = dateTime.year.toString().substring(2);
    String hour = dateTime.hour.toString().padLeft(2, '0');
    String minute = dateTime.minute.toString().padLeft(2, '0');
    String second = dateTime.second.toString().padLeft(2, '0');

    // Return the formatted string
    return "$day $month $year ($hour:$minute:$second)";
  } catch (e) {
    print(e);
    return inputISOTime;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
