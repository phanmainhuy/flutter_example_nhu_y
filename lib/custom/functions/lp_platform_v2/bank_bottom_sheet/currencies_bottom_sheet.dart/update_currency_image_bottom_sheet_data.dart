import 'package:flutter_example_nhuy/model/bank_currency_model_struct.dart';
import 'package:flutter_example_nhuy/model/currency_image_option_model_struct.dart';

List<CurrencyImageOptionModelStruct>? updateCurrencyImageBottomSheetData(
  List<CurrencyImageOptionModelStruct>? oldCurrencyList,
  List<BankCurrencyModelStruct>? bankCurrencyList,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (oldCurrencyList == null || oldCurrencyList.isEmpty) {
    return [];
  }
  if (bankCurrencyList == null || bankCurrencyList.isEmpty) {
    return oldCurrencyList;
  }

  try {
    final bankNames = bankCurrencyList.map((bank) => bank.name).toSet();

    final updatedCurrencyList = oldCurrencyList.map((currency) {
      bool isSelected = bankNames.contains(currency.name);
      return CurrencyImageOptionModelStruct(
        id: currency.id,
        name: currency.name,
        imagePath: currency.imagePath,
        isSelected: isSelected,
        isDisplay: currency.isDisplay,
      );
    }).toList();

    return updatedCurrencyList;
  } catch (e) {
    print('ERROR updateCurrencyListOption: ${e.toString()}');
    return oldCurrencyList;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
