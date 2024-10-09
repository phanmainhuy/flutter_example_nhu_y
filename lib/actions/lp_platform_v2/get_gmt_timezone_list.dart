import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/standalone.dart' as tz;

List<String> getGMTTimezoneList() {
  // Initialize time zone data
  tz.initializeTimeZones();

  // Get all available time zone locations
  final locations = tz.timeZoneDatabase.locations;

  // Create a Set to store unique GMT offsets
  final gmtOffsets = <String>{};

  // Iterate through locations and format the GMT offset
  locations.forEach((_, location) {
    final now = tz.TZDateTime.now(location);
    final offset = now.timeZoneOffset;
    final hours = offset.inHours;
    final minutes = offset.inMinutes.remainder(60).abs();
    final gmtString =
        'GMT${hours >= 0 ? '+' : ''}$hours:${minutes.toString().padLeft(2, '0')}';

    // Add the formatted GMT offset to the Set
    gmtOffsets.add(gmtString);
  });

  // Convert the Set to a list
  final gmtList = gmtOffsets.toList();

  // Sort the list based on the numeric value of hours and minutes
  gmtList.sort((a, b) {
    final aParts = a.split(RegExp(r'[:+-]'));
    final bParts = b.split(RegExp(r'[:+-]'));

    final aSign = a.contains('-') ? -1 : 1;
    final bSign = b.contains('-') ? -1 : 1;

    final aHours = int.parse(aParts[1]) * aSign;
    final bHours = int.parse(bParts[1]) * bSign;

    if (aHours == bHours) {
      final aMinutes = int.parse(aParts[2]);
      final bMinutes = int.parse(bParts[2]);
      return aMinutes.compareTo(bMinutes);
    }

    return aHours.compareTo(bHours);
  });

  return gmtList;
}
