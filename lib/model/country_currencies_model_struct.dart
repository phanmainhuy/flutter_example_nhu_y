class CountryCurrenciesModelStruct {
  CountryCurrenciesModelStruct({
    String? country,
    String? defaultCurrency,
    List<String>? currencies,
  })  : _country = country,
        _defaultCurrency = defaultCurrency,
        _currencies = currencies;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "defaultCurrency" field.
  String? _defaultCurrency;
  String get defaultCurrency => _defaultCurrency ?? '';
  set defaultCurrency(String? val) => _defaultCurrency = val;

  bool hasDefaultCurrency() => _defaultCurrency != null;

  // "currencies" field.
  List<String>? _currencies;
  List<String> get currencies => _currencies ?? const [];
  set currencies(List<String>? val) => _currencies = val;

  void updateCurrencies(Function(List<String>) updateFn) {
    updateFn(_currencies ??= []);
  }

  bool hasCurrencies() => _currencies != null;

  static CountryCurrenciesModelStruct fromMap(Map<String, dynamic> data) =>
      CountryCurrenciesModelStruct(
        country: data['country'] as String?,
        defaultCurrency: data['defaultCurrency'] as String?,
        currencies: (data['currencies']),
      );

  static CountryCurrenciesModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CountryCurrenciesModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'country': _country,
        'defaultCurrency': _defaultCurrency,
        'currencies': _currencies,
      };

  @override
  String toString() => 'CountryCurrenciesModelStruct(${toMap()})';
}

CountryCurrenciesModelStruct createCountryCurrenciesModelStruct({
  String? country,
  String? defaultCurrency,
}) =>
    CountryCurrenciesModelStruct(
      country: country,
      defaultCurrency: defaultCurrency,
    );
