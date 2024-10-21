void main() {
  String number = '1234567890123456789012312312';
  String formatted = formatBankNumber(number, 4, '-');
  print(formatted); // Output: 1234 - 5678 - 9012 - 3456 - 7890
}

String formatBankNumber(
  String? input,
  int? separateNumber,
  String? symbol,
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

  // format String
  String numStr = input.toString();

  List<String> parts = [];
  try {
    for (int i = 0; i < numStr.length; i += separateNumber) {
      int end = (i + 4 < numStr.length) ? i + separateNumber : numStr.length;
      parts.add(numStr.substring(i, end));
    }

    return parts.join(' $symbol ');
  } catch (e) {
    print('ERROR formatBankNumber: ${e.toString()}');
    return input;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
