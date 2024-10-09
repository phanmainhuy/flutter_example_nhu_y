String calculateProfit(
  String? token,
  String? price,
  String? lastVwap,
  String? pair,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (token == '' ||
      token == null ||
      price == '' ||
      price == null ||
      lastVwap == '' ||
      lastVwap == null ||
      token == '0') {
    return '0';
  }

  try {
    double parseToken = double.parse(token);
    double parsePrice = double.parse(price);
    double parseLastVwap = double.parse(lastVwap);
    double result = (parseToken * (parsePrice - parseLastVwap)) / 1000000;

    if (pair == 'VND_USDT') {
      return result.toString().split('.')[0];
    }
    return result.toString();

    // return ;
  } catch (e) {
    print('ERROR calculateProfit:  ${e.toString()}');
    print(e);
    return '0';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
