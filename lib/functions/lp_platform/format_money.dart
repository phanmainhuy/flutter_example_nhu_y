String formatMoney(String input) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  try {
    String str = input.replaceAll(',', '');
    String decimalNum = '';
    if (str.contains('.')) {
      decimalNum = '.${str.split('.')[1]}';
      str = str.split('.')[0];
    }

    // Remove trailing zeros in the decimal part
    if (decimalNum.isNotEmpty) {
      decimalNum = decimalNum.replaceFirst(RegExp(r'0+$'), '');
      if (decimalNum == '.') {
        decimalNum = ''; // Remove decimal point if no digits follow
      }
    }

    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < str.length; i++) {
      buffer.write(str[str.length - 1 - i]);
      if ((i + 1) % 3 == 0 && i + 1 != str.length) {
        buffer.write(',');
      }
    }
    return buffer.toString().split('').reversed.join('') + decimalNum;
  } catch (e) {
    print('ERROR formatMoney: ' + e.toString());
    return input;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}