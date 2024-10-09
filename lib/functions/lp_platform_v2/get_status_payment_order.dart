String? getStatusPaymentOrder(
  String? orderType,
  String? orderStatus,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (orderType == null ||
      orderType == '' ||
      orderStatus == null ||
      orderStatus == '') {
    return '';
  }

  // sell lp
  if (orderType == 'BUY') {
    switch (orderStatus) {
      case 'TOKEN_LOCKED':
        return 'Not received';

      case 'USER_CONFIRMED':
        return 'Not received';

      case 'LP_CONFIRMED':
        return 'Received';

      case 'TRANSFERING_TOKEN':
        return 'Processing...';

      default:
        return orderStatus;
    }
  }

  // buy lp
  else if (orderType == 'SELL') {
    switch (orderStatus) {
      case 'ACCEPTED':
        return 'Not paid';

      case 'LP_CONFIRMED':
        return 'Not paid';

      case 'USER_CONFIRMED':
        return 'Paid';

      case 'TRANSFERING_TOKEN':
        return 'Processing...';

      default:
        return orderStatus;
    }
  }

  return orderStatus;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
