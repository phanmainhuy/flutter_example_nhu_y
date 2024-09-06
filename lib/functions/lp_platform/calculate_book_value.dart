void main() {
  print(calculateBookValue(
      '37999644', '510.163', 'VND_USDT')); // Should print "0.04"
}

String? calculateBookValue(
  String balance,
  String vwap,
  String? pair,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // empty data
  if (vwap == '0' || balance == '0') {
    return '0';
  } else {
    try {
      double bookValue = double.parse(balance) * double.parse(vwap);

      if (pair != 'VND_USDT' || pair != '6') {
        return bookValue.toString();
      } else {
        return (bookValue.floor()).toString();
      }
    } catch (e) {
      print('Error calculateBookValue: ' + e.toString());
      return '0';
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
