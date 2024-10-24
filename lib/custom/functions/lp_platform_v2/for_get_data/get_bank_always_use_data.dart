import 'package:flutter_example_nhuy/model/bank_filter_data_model_struct.dart';

List<BankFilterDataModelStruct> getBankAlwaysUseData(
  List<BankFilterDataModelStruct>? bankList,
  String? pair,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  List<BankFilterDataModelStruct> result = [];

  if (bankList == null || bankList == [] || pair == null || pair == '') {
    return result;
  }

  for (var bank in bankList) {
    if (bank.currenciesAlwaysUse.contains(pair)) {
      result.add(bank);
    }
  }

  return result;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
