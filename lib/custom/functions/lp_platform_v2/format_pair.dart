String? formatPair(String? pair) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (pair == null || pair == '') {
    return '';
  } else {
    return pair.replaceAll('_USDT', '');
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
