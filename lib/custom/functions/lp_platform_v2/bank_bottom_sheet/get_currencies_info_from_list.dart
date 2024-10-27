import 'package:flutter_example_nhuy/model/bank_currency_model_struct.dart';

List<String> getCurrenciesInfoFromList(
    List<BankCurrencyModelStruct>? currencyList, String? option) {
  if (currencyList == null || currencyList == []) {
    return [];
  }

  if (option == null || option == '') {
    option = 'null';
  }

  try {
    // Check option [isDefault, isAlwaysUse, null]
    switch (option) {
      case 'isDefault':
        return currencyList
            .where((currency) => currency.isDefault == true)
            .map((currency) => currency.name)
            .toList();

      case 'isAlwaysUse':
        return currencyList
            .where((currency) =>
                currency.isDefault == true && currency.isAlwaysUse == true)
            .map((currency) => currency.name)
            .toList();

      case 'null':
        return currencyList.map((currency) => currency.name).toList();

      default:
        return currencyList.map((currency) => currency.name).toList();
    }
  } catch (e) {
    print('ERROR getCurrenciesInfoFromList: ${e.toString()}');
    return [];
  }
}
