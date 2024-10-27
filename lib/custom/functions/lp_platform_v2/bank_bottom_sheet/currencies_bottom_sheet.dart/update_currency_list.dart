import 'package:flutter_example_nhuy/model/bank_currency_model_struct.dart';

List<BankCurrencyModelStruct>? updateCurrencyListOption(
  List<BankCurrencyModelStruct>? oldCurrencyList,
  String? currencyName,
  String? optionRemove,
  bool? statusChange,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (oldCurrencyList == null || oldCurrencyList == []) {
    return [];
  }

  if (optionRemove == null || optionRemove == '') {
    return oldCurrencyList;
  }
  if (currencyName == null || currencyName == '') {
    return oldCurrencyList;
  }

  try {
    statusChange ??= false;

    // Check option [id, name, isDefault, isAlwaysUse]
    switch (optionRemove) {
      case 'id':
        break;

      case 'name':
        break;

      case 'isDefault':
        List<BankCurrencyModelStruct> updatedList =
            oldCurrencyList.map((currency) {
          if (currency.name == currencyName) {
            currency.isDefault = statusChange;
            if (currency.isDefault == false) {
              currency.isAlwaysUse = false;
            }
          }
          return currency;
        }).toList();
        return updatedList;

      case 'isAlwaysUse':
        List<BankCurrencyModelStruct> updatedList =
            oldCurrencyList.map((currency) {
          if (currency.name == currencyName) {
            if (currency.isDefault == false) {
              currency.isAlwaysUse = false;
            } else {
              currency.isAlwaysUse = statusChange;
            }
          }
          return currency;
        }).toList();
        return updatedList;
    }

    return oldCurrencyList;
  } catch (e) {
    print('ERROR updateCurrencyListOption: ${e.toString()}');
    return oldCurrencyList;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
