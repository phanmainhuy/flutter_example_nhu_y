void main() {
  double formatted = parseStringToDouble('1981.72364');
  print(formatted); // Output: 1981.72364
}

double parseStringToDouble(String? input) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (input == null || input == '') {
      return 0;
    } else {
      String inputParse = input;

      inputParse = inputParse.replaceAll(',', '');

      inputParse = inputParse.replaceAll(' ', '');

      return double.parse(inputParse);
    }
  } catch (e) {
    print("ERROR parseStringToDouble: ${e.toString()}");
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
