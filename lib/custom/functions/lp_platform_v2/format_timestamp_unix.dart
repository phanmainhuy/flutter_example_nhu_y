void main() {
  // Your timestamp in seconds
  String timestamp = '1725612120';

  // Convert timestamp to DateTime

  // Manually format the date

  // Print the formatted date
  print(formatTimestampUnix(timestamp));
}

// Function to manually format DateTime
String? formatTimestampUnix(String? inputTimestamp) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (inputTimestamp == '' || inputTimestamp == null) {
    return '';
  }

  try {
    int timestamp = int.parse(inputTimestamp);

    DateTime date =
        DateTime.fromMillisecondsSinceEpoch(timestamp * 1000).toLocal();

    // Array of month abbreviations
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

    String day = date.day.toString().padLeft(2, '0'); // Day with leading zero
    String month = months[date.month - 1]; // Month name
    String year =
        date.year.toString().substring(2); // Last two digits of the year
    String hour =
        date.hour.toString().padLeft(2, '0'); // Hour with leading zero
    String minute =
        date.minute.toString().padLeft(2, '0'); // Minute with leading zero
    String second =
        date.second.toString().padLeft(2, '0'); // Second with leading zero

    // Return the formatted string
    return "$day $month $year ($hour:$minute:$second)";
  } catch (e) {
    return inputTimestamp;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
