import 'package:flutter_example_nhuy/model/currency_image_option_model_struct.dart';

List<CurrencyImageOptionModelStruct> updateCurrencyMapCurrencies(
    List<CurrencyImageOptionModelStruct>? oldListCurrencyImage,
    List<String>? currencyList) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  if (oldListCurrencyImage == null || oldListCurrencyImage == []) {
    return [];
  }

  if (currencyList == null || currencyList == []) {
    return oldListCurrencyImage;
  }

  try {
    return oldListCurrencyImage.map((currency) {
      bool isSelected = currencyList.contains(currency.name);

      return CurrencyImageOptionModelStruct(
        id: currency.id,
        name: currency.name,
        imagePath: currency.imagePath,
        isSelected: isSelected,
        isDisplay: currency.isDisplay,
      );
    }).toList();
  } catch (e) {
    print("ERROR updateListCurrencyMapCurrencies: ${e.toString()}");
    return oldListCurrencyImage;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
