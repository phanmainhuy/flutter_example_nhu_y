import 'package:flutter_example_nhuy/model/country_currencies_model_struct.dart';
import 'package:flutter_example_nhuy/model/country_image_option_model_struct.dart';

List<CountryImageOptionModelStruct> updateCountryMapDisableSelected(
  List<CountryImageOptionModelStruct>? countryListBottomSheet,
  List<CountryCurrenciesModelStruct>? countryListExist,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (countryListBottomSheet == null || countryListBottomSheet.isEmpty) {
    return [];
  }

  if (countryListExist == null || countryListExist.isEmpty) {
    return countryListBottomSheet;
  }

  List<CountryImageOptionModelStruct> countryListNew =
      countryListBottomSheet.map((country) {
    bool isDisabled = countryListExist
        .any((existCountry) => existCountry.country == country.name);

    return CountryImageOptionModelStruct(
      id: country.id,
      name: country.name,
      fullName: country.fullName,
      imagePath: country.imagePath,
      isSelected: false,
      isDisableSelected: isDisabled,
      isDisplay: true,
    );
  }).toList();

  for (var country in countryListNew) {
    if (!country.isDisableSelected && country.isDisplay) {
      country.isSelected = true;
      break;
    }
  }

  return countryListNew;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
