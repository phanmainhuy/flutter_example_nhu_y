String getLocalTimeISO() {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    DateTime now = DateTime.now();
    String nowDatetime = now.toIso8601String();
    // Adjust the format to remove extra characters and add 'Z'
    String isoTime = 'T${nowDatetime.substring(11, 19)}Z';

    return isoTime;
  } catch (e) {
    print('ERROR getLocalTimeISO: ${e.toString()}');
    return 'T00:00:00Z';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
