import 'package:flutter_example_nhuy/model/bank_filter_data_model_struct.dart';

bool checkBankAlwaysUse(
  List<BankFilterDataModelStruct>? bankList,
  String? pair,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (bankList == null || bankList == [] || pair == null || pair == '') {
    return false;
  }

  for (var bank in bankList) {
    if (bank.currenciesAlwaysUse.contains(pair)) {
      return true;
    }
  }

  return false;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
