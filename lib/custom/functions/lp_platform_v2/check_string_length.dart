int? checkStringLength(
  String? input,
  bool countSpace,
  bool trimStartAndEnd,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (input == null || input == '') {
    return 0;
  }
  try {
    String inputString = input;
    if (trimStartAndEnd) {
      inputString = inputString.trim();
    }
    if (!countSpace) {
      inputString = inputString.replaceAll(' ', '');
    }
    return inputString.length;
  } catch (e) {
    print('ERROR checkStringLength: ${e.toString()}');
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
