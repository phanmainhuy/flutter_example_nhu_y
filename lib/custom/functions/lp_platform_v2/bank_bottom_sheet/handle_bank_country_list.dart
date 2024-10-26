import 'package:flutter_example_nhuy/model/bank_country_option_model_struct.dart';

List<BankCountryOptionModelStruct> handleBankCountryList(
  List<BankCountryOptionModelStruct> oldBankCountryList,
  String? bankCodeSelect,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (oldBankCountryList == []) {
    return [];
  }
  if (bankCodeSelect == null || bankCodeSelect == '') {
    return oldBankCountryList;
  } else {
    try {
      List<BankCountryOptionModelStruct> bankCountryList = oldBankCountryList;

      for (int i = 0; i < bankCountryList.length; i++) {
        if (bankCountryList[i].isSelected == true &&
            bankCountryList[i].code != bankCodeSelect) {
          bankCountryList[i].isSelected = false;
        } else if (bankCountryList[i].code == bankCodeSelect) {
          bankCountryList[i].isSelected = true;
        }
      }

      return bankCountryList;
    } catch (e) {
      print("ERROR handleBankCountryList: ${e.toString()}");
      return oldBankCountryList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
