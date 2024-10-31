import 'package:flutter_example_nhuy/model/country_image_option_model_struct.dart';

List<CountryImageOptionModelStruct> handleCountryList(
  List<CountryImageOptionModelStruct> countryList,
  String idSelected,
  bool isMultiOptions,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  List<CountryImageOptionModelStruct> countryListNew = countryList;

  // multi selection
  if (countryList == []) {
    return [];
  } else if (isMultiOptions) {
    for (int i = 0; i < countryListNew.length; i++) {
      if (!countryListNew[i].isDisableSelected) {
        if (countryListNew[i].id == idSelected) {
          countryListNew[i].isSelected = true;
        }
      }
    }
    return countryListNew;
  } else {
    try {
      for (int i = 0; i < countryListNew.length; i++) {
        if (countryListNew[i].isDisableSelected == true) {
          countryListNew[i].isSelected = false;
        } else {
          if (countryListNew[i].isSelected == true &&
              countryListNew[i].id != idSelected) {
            countryListNew[i].isSelected = false;
          } else if (countryListNew[i].id == idSelected) {
            countryListNew[i].isSelected = true;
          }
        }
      }
      return countryListNew;
    } catch (e) {
      print("ERROR handleCountryList: ${e.toString()}");
      return countryList;
    }
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
