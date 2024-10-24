import 'package:flutter_example_nhuy/model/bank_filter_data_model_struct.dart';

List<BankFilterDataModelStruct> updateBankSelectOptions(
    List<BankFilterDataModelStruct>? oldBankList,
    String? bankUuid,
    String? options,
    bool check) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  /// SHOW_BANK_NUMBER, SET_DEFAULT_ALWAYS_USE
  try {
    if (oldBankList == null || oldBankList == []) {
      return [];
    }
    if (bankUuid == null ||
        options == null ||
        bankUuid == '' ||
        options == '') {
      return oldBankList;
    }

    if (options == 'SHOW_BANK_NUMBER') {
      List<BankFilterDataModelStruct> updatedList = oldBankList.map((bank) {
        if (bank.uuid == bankUuid) {
          bank.showBankNumber = check;
          return bank;
        }
        return bank;
      }).toList();

      return updatedList;
    }

    //  else if (options == 'SET_DEFAULT_ALWAYS_USE') {
    //   List<BankFilterDataModelStruct> updatedList = oldBankList.map((bank) {
    //     if (bank.uuid == bankUuid) {
    //       if (options == 'SHOW_BANK_NUMBER') {
    //         bank. = check;
    //         return bank;
    //       }
    //     }
    //     return bank;
    //   }).toList();

    //   return updatedList;
    // }
    return [];
  } catch (e) {
    print('ERROR updateBankSelectOptions: ${e.toString()}');
    if (oldBankList == null || oldBankList == []) {
      return [];
    } else {
      return oldBankList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
