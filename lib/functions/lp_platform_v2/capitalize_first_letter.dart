String capitalizeFirstLetter(String? input) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    List<String> words = [];
    if (input == null || input.isEmpty) {
      return '';
    } else if (input.contains('_')) {
      words = input.split('_');
    } else if (input.contains(' ')) {
      words = input.split(' '); // Split the input string by spaces
    } else {
      return input[0].toUpperCase() + input.substring(1).toLowerCase();
    }

    List<String> capitalizedWords = words.map((word) {
      if (word.isEmpty) return word; // Handle empty words (extra spaces)
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).toList();

    return capitalizedWords.join(' ');
  } catch (e) {
    return '';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
