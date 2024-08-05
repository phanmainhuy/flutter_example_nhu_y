import 'package:decimal/decimal.dart';

void main() {
  print(calculateTokenPair('6', '23', '25000')); // Should print "0.04"
  // Decimal x = (Decimal.parse(
  //             '123123123123123123123123121231230001231231231231231231231231230') /
  //         Decimal.parse(10.toString()))
  //     .toDecimal();

  // print(x);
}

String? calculateTokenPair(
  String? pair,
  String? priceInput,
  String? priceMarket,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (priceInput == null ||
      priceMarket == null ||
      priceInput.isEmpty ||
      priceMarket.isEmpty) {
    return '';
  }

  String _priceMarket = priceMarket.replaceAll(',', '');
  String _priceInput = priceInput.replaceAll(',', '');
  if (_priceInput == '0' || _priceMarket == '0') {
    return '0';
  } else {
    try {
      Decimal priceInputDecimal = Decimal.parse(_priceInput);
      Decimal priceMarketDecimal = Decimal.parse(_priceMarket);

      // Perform the division
      Decimal result = (priceInputDecimal / priceMarketDecimal).toDecimal();

      // Format the result to match the expected output
      String resultString = result.toString().replaceFirst(RegExp(r'0+$'), '');
      if (resultString.endsWith('.')) {
        resultString = resultString.substring(0, resultString.length - 1);
      }

      return formatMoney(resultString);
    } catch (e) {
      print('ERROR calculateTokenPair: $e');
      return '';
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

String formatMoney(String input) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  try {
    String str = input;
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
