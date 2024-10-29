import 'package:flutter_example_nhuy/model/currency_image_option_model_struct.dart';

List<CurrencyImageOptionModelStruct> removeCurrencyListIsSelected(
  List<CurrencyImageOptionModelStruct> currencyList,
  String idSelected,
  bool isRemoveAll,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Remove all
  List<CurrencyImageOptionModelStruct> currencyListNew = currencyList;
  if (currencyList == []) {
    return [];
  } else if (isRemoveAll) {
    for (int i = 0; i < currencyListNew.length; i++) {
      if (currencyListNew[i].isSelected == true) {
        currencyListNew[i].isSelected = false;
      }
    }
    return currencyListNew;
  } else {
    try {
      for (int i = 0; i < currencyListNew.length; i++) {
        if (currencyListNew[i].id == idSelected) {
          currencyListNew[i].isSelected = false;
        }
      }
      return currencyListNew;
    } catch (e) {
      print("ERROR handlecurrencyList: ${e.toString()}");
      return currencyList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
