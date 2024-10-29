List<String> removeStringFromListString(
  List<String>? listString,
  String? stringRemove,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (listString == null || listString == []) {
    return [];
  }

  if (stringRemove == null || stringRemove == '') {
    return listString;
  }

  listString.remove(stringRemove);

  return listString;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
