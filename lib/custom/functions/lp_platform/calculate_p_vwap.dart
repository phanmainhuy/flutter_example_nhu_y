double calculatePVWAP(
  dynamic data,
  double vwap,
  String balance,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  print('\n\n******START*******');
  print("balance input: $balance");
  print("vwap: $vwap");
  double result = 0;
  double localBalance = 0;

  try {
    // const data
    int microToken = 1000000;
    double totalPendingTokenLocked = 0;
    double totalPendingValue = 0;

    // count
    int countBuyPendingOrder = 0;

    localBalance = parseToken(balance, microToken);
    print("balance: $localBalance");

    // no token
    if (localBalance <= 0) {
      return vwap;
    }

    List<dynamic> dataList = ((data['data'] as List))
        .where((item) =>
            item['orderType'] == "SELL" &&
            item['status'] != "PENDING" &&
            item['status'] != "TOKEN_LOCKED" &&
            item['status'] != "FAILED" &&
            item['status'] != "CANCELED" &&
            item['status'] != "SUCCESS")
        .map((item) {
      return {
        'uuid': item['uuid'],
        'orderType': item['orderType'],
        'status': item['status'],
        'price': item['price'],
        'tokenLocked': item['tokenLocked'],
        'vwap': item['vwap'],
        'balance': item['balance']
      };
    }).toList();

    // empty list
    if (dataList.isEmpty) {
      return vwap;
    }

    dataList.asMap().forEach((index, item) {
      countBuyPendingOrder++;

      double tokenLocked = parseToken(item['tokenLocked'], microToken);
      totalPendingTokenLocked += tokenLocked;
      totalPendingValue += (tokenLocked * item['price']);
    });

    // no pending order
    if (countBuyPendingOrder == 0) {
      return dataList[0]['vwap'];
    }

    result = (((vwap * localBalance) + totalPendingValue) /
        (localBalance + totalPendingTokenLocked));

    print('\nTotal Pending Inventory (TokenLocked): $totalPendingTokenLocked');
    print('Number Pending Order Sell: $countBuyPendingOrder');
    print('\n');

    print('Local balance: ' + localBalance.floor().toString());
    print('Total Pending price * vol: $totalPendingValue');

    print('\n');
    print('******Result*******');
    print('Last pVWAP: $result');
    print('******END*******');
    return result;
  } catch (e) {
    print(e);
    return 0;
  }
}

double parseToken(
  String balance,
  int microToken,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (balance == '' || balance.isEmpty) {
    return 0;
  }

  try {
    double currentBalance = double.parse(balance);
    if (currentBalance > 0) {
      return currentBalance / microToken;
    } else {
      return 0;
    }
  } catch (e) {
    return 0;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
