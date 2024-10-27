import 'package:flutter_example_nhuy/model/bank_currency_model_struct.dart';

List<BankCurrencyModelStruct> getBankCurrencyModelFromListString(
  List<String>? currenciesList,
  List<String>? currenciesDefaultList,
  List<String>? currenciesListAlwaysUseList,
) {
  try {
    if (currenciesList == null || currenciesList == []) {
      return [];
    }
    if (currenciesDefaultList == null || currenciesDefaultList == []) {
      return currenciesList.map((currencyName) {
        return BankCurrencyModelStruct(
          name: currencyName,
          isDefault: false,
          isAlwaysUse: false,
        );
      }).toList();
    }
    currenciesListAlwaysUseList ??= [];
    return currenciesList.map((currencyName) {
      return BankCurrencyModelStruct(
        name: currencyName,
        isDefault: currenciesDefaultList.contains(currencyName),
        isAlwaysUse: currenciesListAlwaysUseList?.contains(currencyName),
      );
    }).toList();
  } catch (e) {
    print('ERROR getBankCurrencyModelFromListString: ${e.toString()}');
    return [];
  }
}
