void main() {
  String number = '1234567890123456789012312312';
  String formatted = formatBankNumber(number, 4, '', true);
  print(formatted); // Output: 1234 - 5678 - 9012 - 3456 - 7890
}

String formatBankNumber(
  String? input,
  int? separateNumber,
  String? symbol,
  bool? hideBank,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  if (input == null || input == '') {
    return '';
  }

  if (separateNumber == null || separateNumber == 0) {
    return input;
  }

  if (symbol == null || symbol == '') {
    symbol = '';
  }

  hideBank ??= false;

  // format String
  String numStr = input.toString();
  List<String> parts = [];

  try {
    for (int i = 0; i < numStr.length; i += separateNumber) {
      int end = (i + separateNumber < numStr.length)
          ? i + separateNumber
          : numStr.length;
      String part = numStr.substring(i, end);

      // Check if hiding numb
      if (hideBank == true && i + separateNumber < numStr.length) {
        parts.add('*' * part.length);
      } else {
        parts.add(part);
      }
    }

    if (hideBank) {
      return parts.join(' ');
    }

    if (symbol == '') {
      return parts.join(' ');
    }

    return parts.join(' $symbol ');
  } catch (e) {
    print('ERROR formatBankNumber: ${e.toString()}');
    return input;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
