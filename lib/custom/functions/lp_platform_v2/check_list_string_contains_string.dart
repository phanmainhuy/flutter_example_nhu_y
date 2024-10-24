void main() {
  print(checkListStringContainsString('VN', ['VN', 'TH']));
}

bool checkListStringContainsString(
  String? inputString,
  List<String>? listString,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (inputString == '' ||
        inputString == null ||
        listString == [] ||
        listString == null) {
      return false;
    } else {
      return listString.contains(inputString);
    }
  } catch (e) {
    print("ERROR checkListStringContainsString: ${e.toString()}");
    return false;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
