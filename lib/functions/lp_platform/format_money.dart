void main() {
  print(formatMoney('19386012381.972456789', true, 'VND_USDT')); // Example
}

String? formatMoney(
  String input,
  bool calculateToken,
  String? pair,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (input == '') {
      return '0';
    }
    if (input == '--') {
      return '--';
    }

    String str = input.replaceAll(',', '');
    String decimalNum = '';
    String negative = '';

    if (str == '0') {
      return '0';
    }
    if (calculateToken) {
      str = (double.parse(str) / 1000000).toString();
    }
    if (str.contains('.')) {
      decimalNum = '.${str.split('.')[1]}';
      str = str.split('.')[0];
    }
    if (str.contains('-')) {
      negative = '-';
      str = str.replaceAll('-', '');
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
    if (calculateToken == false && pair == 'VND_USDT') {
      return negative + buffer.toString().split('').reversed.join('');
    } else {
      return negative +
          buffer.toString().split('').reversed.join('') +
          decimalNum;
    }
  } catch (e) {
    print('ERROR formatMoney: ' + e.toString());
    return input;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
