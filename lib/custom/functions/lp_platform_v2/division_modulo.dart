int? divisionModulo(
  int? divisor,
  int? dividend,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (dividend == null || divisor == null) {
      return 0;
    }
    if (dividend == 0) {
      return 0;
    }
    return divisor % dividend;
  } catch (e) {
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
