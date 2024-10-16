String capitalizeValidateEnumUnderscore(String? input) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (input == null || input == '') return '';

    // split input string
    List<String> words = input.split('_');

    String result = words.map((word) {
      if (word == words[0]) {
        return word[0].toUpperCase() + word.substring(1);
      } else {
        return word;
      }
    }).join(' ');

    return '$result.';
  } catch (e) {
    print('ERROR capitalizeValidateEnum: ${e.toString()}');
    return 'input';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
