import 'package:flutter_example_helen/functions/lp_platform/format_money.dart';

String? calculateCurrencyPair(
  String? pair,
  String? price,
  String? usdt,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  if (price == null || usdt == null || price.isEmpty || usdt.isEmpty) {
    return '';
  } else if (price == '0' || usdt == '0') {
    return '';
  } else {
    try {
      // Find the number of decimal places in price and usdt
      int priceDecimals =
          price.contains('.') ? price.length - price.indexOf('.') - 1 : 0;
      int usdtDecimals =
          usdt.contains('.') ? usdt.length - usdt.indexOf('.') - 1 : 0;

      // Remove the decimal points
      BigInt priceBigInt = BigInt.parse(price.replaceAll('.', ''));
      BigInt usdtBigInt = BigInt.parse(usdt.replaceAll('.', ''));

      // Calculate the product
      BigInt result = priceBigInt * usdtBigInt;

      // Adjust the result by the total number of decimal places
      int totalDecimals = priceDecimals + usdtDecimals;
      String resultString = result.toString();
      if (totalDecimals > 0) {
        resultString = resultString.padLeft(totalDecimals + 1, '0');
        resultString =
            '${resultString.substring(0, resultString.length - totalDecimals)}.${resultString.substring(resultString.length - totalDecimals)}';
      }

      if (pair == '6') {
        // Remove .123123 part
        resultString = resultString.split('.')[0];
      }

      return formatMoney(resultString, false, 'VND_USDT');
    } catch (e) {
      print('ERROR calculateCurrencyPair: $e');
      return '';
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
