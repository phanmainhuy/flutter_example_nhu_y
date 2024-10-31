import 'package:flutter_example_nhuy/model/country_currencies_model_struct.dart';

List<CountryCurrenciesModelStruct> sortCountriesCurrenciesByCurrentCountry(
  List<CountryCurrenciesModelStruct>? countryList,
  String? selectedCountry,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (countryList == null || countryList.isEmpty) {
    return [];
  }

  if (selectedCountry == null || selectedCountry.isEmpty) {
    countryList.sort((a, b) => a.country.compareTo(b.country));
    return countryList;
  }

  countryList.sort((a, b) {
    if (a.country == selectedCountry) return -1;
    if (b.country == selectedCountry) return 1;
    return a.country.compareTo(b.country);
  });

  return countryList;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
