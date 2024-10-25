import 'package:flutter_example_nhuy/model/bank_currency_model_struct.dart';

List<BankCurrencyModelStruct>? removeCurrencyListByOption(
  List<BankCurrencyModelStruct>? oldCurrencyList,
  String? optionRemove,
  String? inputRemove,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (oldCurrencyList == null || oldCurrencyList == []) {
    return [];
  }

  if (optionRemove == null || optionRemove == '') {
    return oldCurrencyList;
  }
  try {
    // Check option [id, name, isDefault]
    switch (optionRemove) {
      case 'id':
        oldCurrencyList.removeWhere((item) => item.id == inputRemove);
        break;
      case 'name':
        oldCurrencyList.removeWhere((item) => item.name == inputRemove);
        break;
      case 'isDefault':
        oldCurrencyList.removeWhere((item) => item.isDefault == true);
        break;
    }
    return oldCurrencyList;
  } catch (e) {
    print('ERROR removeCurrencyListByOption: ${e.toString()}');
    return oldCurrencyList;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
