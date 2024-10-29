import 'package:flutter_example_nhuy/model/currency_image_option_model_struct.dart';

List<CurrencyImageOptionModelStruct> handlePairList(
  List<CurrencyImageOptionModelStruct> pairList,
  String idSelected,
  bool isMultiOptions,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  /// pairList = [{"id": "1", "label": "VND_USDT", "imagePath": "yyfl86wq2cu9/6.vietnam-VND.png", "isSelected": true},...]
  List<CurrencyImageOptionModelStruct> _pairList = pairList;

  // multi selection
  if (pairList == []) {
    return [];
  } else if (isMultiOptions) {
    for (int i = 0; i < _pairList.length; i++) {
      if (_pairList[i].id == idSelected) {
        _pairList[i].isSelected = true;
      }
    }
    return _pairList;
  } else {
    try {
      for (int i = 0; i < _pairList.length; i++) {
        if (_pairList[i].isSelected == true && _pairList[i].id != idSelected) {
          _pairList[i].isSelected = false;
        } else if (_pairList[i].id == idSelected) {
          _pairList[i].isSelected = true;
        }
      }
      return _pairList;
    } catch (e) {
      print("ERROR handlePairList: ${e.toString()}");
      return pairList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
