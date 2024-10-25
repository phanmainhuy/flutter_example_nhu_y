import 'package:flutter_example_nhuy/model/currency_image_option_model_struct.dart';

List<CurrencyImageOptionModelStruct>? handleCurrencyImageBottomSheetList(
  String? option,
  String? id,
  List<CurrencyImageOptionModelStruct>? dataList,
  bool multiSelect,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (dataList == null || dataList == []) {
    return [];
  }
  if (id == '' || id == null || option == '' || option == null) {
    return [];
  }

  return dataList;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
