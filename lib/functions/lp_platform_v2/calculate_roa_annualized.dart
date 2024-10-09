import 'dart:math' as math;

String? calculateROAAnnualized(
  String? realizedROAPeriod,
  String? unRealizedROAPeriod,
  String? typeROA,
  String? period,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    // Check if inputs are null, empty or invalid
    if ((realizedROAPeriod == null || realizedROAPeriod.isEmpty) &&
            (unRealizedROAPeriod == null || unRealizedROAPeriod.isEmpty) &&
            (typeROA != 'realized' &&
                typeROA != 'unrealized' &&
                typeROA != 'total') ||
        period == null ||
        period.isEmpty ||
        period == '0') {
      return '0';
    }

    // Parse inputs to double and int
    double realizedROAPeriodDouble =
        realizedROAPeriod != null ? (double.parse(realizedROAPeriod) / 100) : 0;
    double unRealizedROAPeriodDouble = unRealizedROAPeriod != null
        ? (double.parse(unRealizedROAPeriod) / 100)
        : 0;
    int periodInt = int.parse(period);

    double result;

    // Use switch-case for typeROA
    switch (typeROA) {
      case 'realized':
        result = math.pow((1 + realizedROAPeriodDouble), (365 / periodInt)) - 1;
        // result = result / 100;
        break;
      case 'unrealized':
        result =
            math.pow((1 + unRealizedROAPeriodDouble), (365 / periodInt)) - 1;
        break;
      case 'total':
        result = math.pow(
                (1 + realizedROAPeriodDouble + unRealizedROAPeriodDouble),
                (365 / periodInt)) -
            1;
        break;
      default:
        return '0'; // Return 0 if the type is not valid
    }

    // Return result formatted to 6 decimal places
    // result = result * 100;
    return result.toStringAsFixed(6);
  } catch (e) {
    print('ERROR calculateROAAnnualized: ${e.toString()}');
    return '0';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
