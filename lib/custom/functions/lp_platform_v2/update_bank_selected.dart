import 'package:flutter_example_nhuy/model/bank_filter_data_model_struct.dart';

List<BankFilterDataModelStruct> updateBankSelected(
    List<BankFilterDataModelStruct>? oldBankList, String? bankUuid) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    if (oldBankList == null || oldBankList == []) {
      return [];
    }
    if (bankUuid == null || bankUuid == '') {
      return oldBankList;
    }
    List<BankFilterDataModelStruct> updatedList = oldBankList.map((bank) {
      if (bank.uuid == bankUuid) {
        bank.isSelected = true;
        return bank;
      } else {
        if (bank.isSelected == true) {
          bank.isSelected = false;
          return bank;
        }
      }
      return bank;
    }).toList();

    return updatedList;
  } catch (e) {
    print('ERROR updateBankSelected: ${e.toString()}');
    if (oldBankList == null || oldBankList == []) {
      return [];
    } else {
      return oldBankList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
